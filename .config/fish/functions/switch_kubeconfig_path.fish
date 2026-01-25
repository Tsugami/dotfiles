function switch_kubeconfig_path --description "Switch KUBECONFIG interactively"
    set kube_dir "$HOME/.kube"
    set configs $kube_dir/*config*

    if test (count $configs) -eq 0
        echo "No kubeconfig files found in $kube_dir"
        return 1
    end

    set configs (printf "%s\n" $configs | sort)

    set color_current (set_color green)
    set color_reset (set_color normal)

    set current_configs (string split ":" "$KUBECONFIG")

    echo "Select the kubeconfig:"
    for i in (seq (count $configs))
        set is_current 0
        for c in $current_configs
            if test "$configs[$i]" = "$c"
                set is_current 1
                break
            end
        end

        if test $is_current -eq 1
            printf "%s" $color_current
        end

        printf "%2d) %s" $i (basename $configs[$i])

        if test $is_current -eq 1
            printf " (current)"
        end

        printf "%s\n" $color_reset
    end

    read -P "Enter the number: " choice

    if not string match -qr '^[0-9]+$' -- $choice
        echo "Invalid input"
        return 1
    end

    if test $choice -lt 1 -o $choice -gt (count $configs)
        echo "Invalid option"
        return 1
    end

    set -gx KUBECONFIG $configs[$choice]
    echo "KUBECONFIG switched to: $KUBECONFIG"
end
