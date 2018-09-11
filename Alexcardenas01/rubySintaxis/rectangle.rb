class rectangle

    #atributes
    @hor = '_'
    @ver = '|'
    @empty = ' '

    def lines(wParam)
        for i .. wParam
            print @hor
        end
        puts '\n'
    end

    def rectangleStructure (wParam, hParam)
        i = 0
        j = 0
        #topLine
        lines(wParam)
        for i .. hParam
            for j.. wParam
                if j == 0 || j == wParam-1
                    print ver
                else
                    print empty
                end

    end


end

