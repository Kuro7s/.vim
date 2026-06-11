" Function highlighting

syn match cUserFunction "\<\h\w*\>\s*("me=e-1
hi def link cUserFunction Function

hi Function cterm=NONE gui=NONE

" Types and Custom Keywords

syn match cType "\h\w*_[et]\w\@!"
syn keyword cType
    \ u8 u16 u32 u64
    \ s8 s16 s32 s64
    \ f16 f32 f64
    \ usize ssize
    \ i8 i16 i32 i64
    \ isize

syn keyword cStatement defer
syn keyword cStatement cast

syn keyword cStatement global
syn keyword cStatement global_var
syn keyword cStatement global_variable

syn keyword cStatement local_persistent
syn keyword cStatement local_persist

syn keyword cStatement function
syn keyword cStatement internal

syn keyword cStatement typedef

syn keyword cStatement struct
syn keyword cStatement union
syn keyword cStatement enum

syn keyword cStatement const
