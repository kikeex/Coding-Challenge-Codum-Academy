class rectangle

    #atributes
    @hor = '_'
    @ver = '|'
    @empty = ' '

    def lines(wParam)
        for i in 0..wParam
            print @hor
        end
        puts '\n'
    end

    def rectangleStructure (wParam, hParam)
        #topLine
        lines(wParam)
        for i in 0..hParam
            for j in 0..wParam
                if j == 0 || j == wParam-1
                    print ver
                else
                    print empty
                end
            end
        end
        
    end

end

