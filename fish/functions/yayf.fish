function yayf --wraps="yay -Slq --color | fzf --multi --preview 'yay -Sii {1}' --preview-window=down:75% | xargs -ro yay -S" --description "alias yayf=yay -Slq --color | fzf --multi --preview 'yay -Sii {1}' --preview-window=down:75% | xargs -ro yay -S"
  yay -Slq --color | fzf --multi --preview 'yay -Sii {1}' --preview-window=down:75% | xargs -ro yay -S $argv
        
end
