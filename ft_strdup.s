section .text
	global _ft_strdup
	extern _ft_strlen
	extern _ft_strcpy
	extern _malloc

_ft_strdup:
	push rdi
	call _ft_strlen
	inc rax
	mov rdi, rax
	call _malloc
	pop rdi
	cmp rax, byte 0
	je end
	mov rsi, rdi
	mov rdi, rax
	call _ft_strcpy
	ret

end:
	xor rax, rax
	ret
