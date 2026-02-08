syn match cType "\h\w*_[et]\w\@!"
syn keyword cType
    \ u8 u16 u32 u64
    \ s8 s16 s32 s64
    \ f16 f32 f64
    \ usize ssize

syn keyword cStatement global_variable
syn keyword cStatement local_persistent

syn keyword cStatement function
syn keyword cStatement internal

syn keyword cStatement defer

syn match cUserFunction "\<\h\w*\>\s*("me=e-1
hi def link cUserFunction Function

hi Function cterm=NONE gui=NONE
