
./benchmark:	file format mach-o arm64

Disassembly of section __TEXT,__text:

000000010000154c <_main>:
; auto main(int argc, char *argv[]) -> int {
10000154c: d10243ff    	sub	sp, sp, #0x90
100001550: a9087bfd    	stp	x29, x30, [sp, #0x80]
100001554: 910203fd    	add	x29, sp, #0x80
100001558: b81fc3bf    	stur	wzr, [x29, #-0x4]
10000155c: b81f83a0    	stur	w0, [x29, #-0x8]
100001560: f81f03a1    	stur	x1, [x29, #-0x10]
;   int capacity = 100;
100001564: 52800c88    	mov	w8, #0x64               ; =100
100001568: b81ec3a8    	stur	w8, [x29, #-0x14]
;   if (argc > 1) {
10000156c: b85f83a8    	ldur	w8, [x29, #-0x8]
100001570: 71000508    	subs	w8, w8, #0x1
100001574: 5400030d    	b.le	0x1000015d4 <_main+0x88>
100001578: 14000001    	b	0x10000157c <_main+0x30>
;     capacity = std::stoi(argv[1]);
10000157c: f85f03a8    	ldur	x8, [x29, #-0x10]
100001580: f9400501    	ldr	x1, [x8, #0x8]
100001584: d100c3a0    	sub	x0, x29, #0x30
100001588: f90007e0    	str	x0, [sp, #0x8]
10000158c: 9400002d    	bl	0x100001640 <__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1B8ne180100ILi0EEEPKc>
100001590: f94007e0    	ldr	x0, [sp, #0x8]
100001594: d2800001    	mov	x1, #0x0                ; =0
100001598: 52800142    	mov	w2, #0xa                ; =10
10000159c: 9400098b    	bl	0x100003bc8 <_strlen+0x100003bc8>
1000015a0: b90017e0    	str	w0, [sp, #0x14]
1000015a4: 14000001    	b	0x1000015a8 <_main+0x5c>
1000015a8: b94017e8    	ldr	w8, [sp, #0x14]
;     capacity = std::stoi(argv[1]);
1000015ac: b81ec3a8    	stur	w8, [x29, #-0x14]
1000015b0: d100c3a0    	sub	x0, x29, #0x30
1000015b4: 94000964    	bl	0x100003b44 <_strlen+0x100003b44>
;   }
1000015b8: 14000007    	b	0x1000015d4 <_main+0x88>
; }
1000015bc: f81c83a0    	stur	x0, [x29, #-0x38]
1000015c0: aa0103e8    	mov	x8, x1
1000015c4: b81c43a8    	stur	w8, [x29, #-0x3c]
;     capacity = std::stoi(argv[1]);
1000015c8: d100c3a0    	sub	x0, x29, #0x30
1000015cc: 9400095e    	bl	0x100003b44 <_strlen+0x100003b44>
1000015d0: 1400001a    	b	0x100001638 <_main+0xec>
;   SPMC<int> spmc(capacity);
1000015d4: b85ec3a1    	ldur	w1, [x29, #-0x14]
1000015d8: 9100a3e0    	add	x0, sp, #0x28
1000015dc: f90003e0    	str	x0, [sp]
1000015e0: 94000025    	bl	0x100001674 <__ZN4SPMCIiEC1Ej>
1000015e4: f94003e8    	ldr	x8, [sp]
1000015e8: 910063e1    	add	x1, sp, #0x18
;   auto producer = std::thread([&](){
1000015ec: f9000fe8    	str	x8, [sp, #0x18]
1000015f0: 910083e0    	add	x0, sp, #0x20
1000015f4: 9400002d    	bl	0x1000016a8 <__ZNSt3__16threadC1IZ4mainE3$_0JEvEEOT_DpOT0_>
1000015f8: 14000001    	b	0x1000015fc <_main+0xb0>
;   return 0;
1000015fc: b81fc3bf    	stur	wzr, [x29, #-0x4]
; }
100001600: 910083e0    	add	x0, sp, #0x20
100001604: 94000977    	bl	0x100003be0 <_strlen+0x100003be0>
100001608: 9100a3e0    	add	x0, sp, #0x28
10000160c: 94000034    	bl	0x1000016dc <__ZN4SPMCIiED1Ev>
100001610: b85fc3a0    	ldur	w0, [x29, #-0x4]
100001614: a9487bfd    	ldp	x29, x30, [sp, #0x80]
100001618: 910243ff    	add	sp, sp, #0x90
10000161c: d65f03c0    	ret
100001620: f81c83a0    	stur	x0, [x29, #-0x38]
100001624: aa0103e8    	mov	x8, x1
100001628: b81c43a8    	stur	w8, [x29, #-0x3c]
10000162c: 9100a3e0    	add	x0, sp, #0x28
100001630: 9400002b    	bl	0x1000016dc <__ZN4SPMCIiED1Ev>
100001634: 14000001    	b	0x100001638 <_main+0xec>
;     capacity = std::stoi(argv[1]);
100001638: f85c83a0    	ldur	x0, [x29, #-0x38]
10000163c: 94000927    	bl	0x100003ad8 <_strlen+0x100003ad8>

0000000100001640 <__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1B8ne180100ILi0EEEPKc>:
;       : __r_(__default_init_tag(), __default_init_tag()) {
100001640: d100c3ff    	sub	sp, sp, #0x30
100001644: a9027bfd    	stp	x29, x30, [sp, #0x20]
100001648: 910083fd    	add	x29, sp, #0x20
10000164c: f81f83a0    	stur	x0, [x29, #-0x8]
100001650: f9000be1    	str	x1, [sp, #0x10]
100001654: f85f83a0    	ldur	x0, [x29, #-0x8]
100001658: f90007e0    	str	x0, [sp, #0x8]
10000165c: f9400be1    	ldr	x1, [sp, #0x10]
100001660: 9400002a    	bl	0x100001708 <__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B8ne180100ILi0EEEPKc>
100001664: f94007e0    	ldr	x0, [sp, #0x8]
;   }
100001668: a9427bfd    	ldp	x29, x30, [sp, #0x20]
10000166c: 9100c3ff    	add	sp, sp, #0x30
100001670: d65f03c0    	ret

0000000100001674 <__ZN4SPMCIiEC1Ej>:
;   SPMC(u32 size) : _size(size) {
100001674: d100c3ff    	sub	sp, sp, #0x30
100001678: a9027bfd    	stp	x29, x30, [sp, #0x20]
10000167c: 910083fd    	add	x29, sp, #0x20
100001680: f81f83a0    	stur	x0, [x29, #-0x8]
100001684: b81f43a1    	stur	w1, [x29, #-0xc]
100001688: f85f83a0    	ldur	x0, [x29, #-0x8]
10000168c: f90007e0    	str	x0, [sp, #0x8]
100001690: b85f43a1    	ldur	w1, [x29, #-0xc]
100001694: 940000f1    	bl	0x100001a58 <__ZN4SPMCIiEC2Ej>
100001698: f94007e0    	ldr	x0, [sp, #0x8]
;   }
10000169c: a9427bfd    	ldp	x29, x30, [sp, #0x20]
1000016a0: 9100c3ff    	add	sp, sp, #0x30
1000016a4: d65f03c0    	ret

00000001000016a8 <__ZNSt3__16threadC1IZ4mainE3$_0JEvEEOT_DpOT0_>:
; thread::thread(_Fp&& __f, _Args&&... __args) {
1000016a8: d100c3ff    	sub	sp, sp, #0x30
1000016ac: a9027bfd    	stp	x29, x30, [sp, #0x20]
1000016b0: 910083fd    	add	x29, sp, #0x20
1000016b4: f81f83a0    	stur	x0, [x29, #-0x8]
1000016b8: f9000be1    	str	x1, [sp, #0x10]
1000016bc: f85f83a0    	ldur	x0, [x29, #-0x8]
1000016c0: f90007e0    	str	x0, [sp, #0x8]
1000016c4: f9400be1    	ldr	x1, [sp, #0x10]
1000016c8: 9400027c    	bl	0x1000020b8 <__ZNSt3__16threadC2IZ4mainE3$_0JEvEEOT_DpOT0_>
1000016cc: f94007e0    	ldr	x0, [sp, #0x8]
; }
1000016d0: a9427bfd    	ldp	x29, x30, [sp, #0x20]
1000016d4: 9100c3ff    	add	sp, sp, #0x30
1000016d8: d65f03c0    	ret

00000001000016dc <__ZN4SPMCIiED1Ev>:
; class SPMC {
1000016dc: d10083ff    	sub	sp, sp, #0x20
1000016e0: a9017bfd    	stp	x29, x30, [sp, #0x10]
1000016e4: 910043fd    	add	x29, sp, #0x10
1000016e8: f90007e0    	str	x0, [sp, #0x8]
1000016ec: f94007e0    	ldr	x0, [sp, #0x8]
1000016f0: f90003e0    	str	x0, [sp]
1000016f4: 94000073    	bl	0x1000018c0 <__ZN4SPMCIiED2Ev>
1000016f8: f94003e0    	ldr	x0, [sp]
1000016fc: a9417bfd    	ldp	x29, x30, [sp, #0x10]
100001700: 910083ff    	add	sp, sp, #0x20
100001704: d65f03c0    	ret

0000000100001708 <__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B8ne180100ILi0EEEPKc>:
;       : __r_(__default_init_tag(), __default_init_tag()) {
100001708: d10103ff    	sub	sp, sp, #0x40
10000170c: a9037bfd    	stp	x29, x30, [sp, #0x30]
100001710: 9100c3fd    	add	x29, sp, #0x30
100001714: f81f83a0    	stur	x0, [x29, #-0x8]
100001718: f81f03a1    	stur	x1, [x29, #-0x10]
10000171c: f85f83a0    	ldur	x0, [x29, #-0x8]
100001720: f9000be0    	str	x0, [sp, #0x10]
100001724: d10047a1    	sub	x1, x29, #0x11
100001728: d1004ba2    	sub	x2, x29, #0x12
10000172c: 9400000d    	bl	0x100001760 <__ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_EC1B8ne180100INS_18__default_init_tagESA_EEOT_OT0_>
;     __init(__s, traits_type::length(__s));
100001730: f85f03a8    	ldur	x8, [x29, #-0x10]
100001734: f90007e8    	str	x8, [sp, #0x8]
100001738: f85f03a0    	ldur	x0, [x29, #-0x10]
10000173c: 94000018    	bl	0x10000179c <__ZNSt3__111char_traitsIcE6lengthB8ne180100EPKc>
100001740: f94007e1    	ldr	x1, [sp, #0x8]
100001744: aa0003e2    	mov	x2, x0
100001748: f9400be0    	ldr	x0, [sp, #0x10]
10000174c: 940008f8    	bl	0x100003b2c <_strlen+0x100003b2c>
100001750: f9400be0    	ldr	x0, [sp, #0x10]
;   }
100001754: a9437bfd    	ldp	x29, x30, [sp, #0x30]
100001758: 910103ff    	add	sp, sp, #0x40
10000175c: d65f03c0    	ret

0000000100001760 <__ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_EC1B8ne180100INS_18__default_init_tagESA_EEOT_OT0_>:
;       : _Base1(std::forward<_U1>(__t1)), _Base2(std::forward<_U2>(__t2)) {}
100001760: d100c3ff    	sub	sp, sp, #0x30
100001764: a9027bfd    	stp	x29, x30, [sp, #0x20]
100001768: 910083fd    	add	x29, sp, #0x20
10000176c: f81f83a0    	stur	x0, [x29, #-0x8]
100001770: f9000be1    	str	x1, [sp, #0x10]
100001774: f90007e2    	str	x2, [sp, #0x8]
100001778: f85f83a0    	ldur	x0, [x29, #-0x8]
10000177c: f90003e0    	str	x0, [sp]
100001780: f9400be1    	ldr	x1, [sp, #0x10]
100001784: f94007e2    	ldr	x2, [sp, #0x8]
100001788: 94000012    	bl	0x1000017d0 <__ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_EC2B8ne180100INS_18__default_init_tagESA_EEOT_OT0_>
10000178c: f94003e0    	ldr	x0, [sp]
100001790: a9427bfd    	ldp	x29, x30, [sp, #0x20]
100001794: 9100c3ff    	add	sp, sp, #0x30
100001798: d65f03c0    	ret

000000010000179c <__ZNSt3__111char_traitsIcE6lengthB8ne180100EPKc>:
;   static inline _LIBCPP_HIDE_FROM_ABI size_t _LIBCPP_CONSTEXPR_SINCE_CXX17 length(const char_type* __s) _NOEXCEPT {
10000179c: d10083ff    	sub	sp, sp, #0x20
1000017a0: a9017bfd    	stp	x29, x30, [sp, #0x10]
1000017a4: 910043fd    	add	x29, sp, #0x10
1000017a8: f90007e0    	str	x0, [sp, #0x8]
;     return std::__constexpr_strlen(__s);
1000017ac: f94007e0    	ldr	x0, [sp, #0x8]
1000017b0: 94000037    	bl	0x10000188c <__ZNSt3__118__constexpr_strlenB8ne180100EPKc>
1000017b4: f90003e0    	str	x0, [sp]
1000017b8: 14000001    	b	0x1000017bc <__ZNSt3__111char_traitsIcE6lengthB8ne180100EPKc+0x20>
1000017bc: f94003e0    	ldr	x0, [sp]
;     return std::__constexpr_strlen(__s);
1000017c0: a9417bfd    	ldp	x29, x30, [sp, #0x10]
1000017c4: 910083ff    	add	sp, sp, #0x20
1000017c8: d65f03c0    	ret
1000017cc: 94000039    	bl	0x1000018b0 <___clang_call_terminate>

00000001000017d0 <__ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_EC2B8ne180100INS_18__default_init_tagESA_EEOT_OT0_>:
;       : _Base1(std::forward<_U1>(__t1)), _Base2(std::forward<_U2>(__t2)) {}
1000017d0: d10103ff    	sub	sp, sp, #0x40
1000017d4: a9037bfd    	stp	x29, x30, [sp, #0x30]
1000017d8: 9100c3fd    	add	x29, sp, #0x30
1000017dc: f81f83a0    	stur	x0, [x29, #-0x8]
1000017e0: f81f03a1    	stur	x1, [x29, #-0x10]
1000017e4: f9000fe2    	str	x2, [sp, #0x18]
1000017e8: f85f83a0    	ldur	x0, [x29, #-0x8]
1000017ec: f90007e0    	str	x0, [sp, #0x8]
1000017f0: 94000007    	bl	0x10000180c <__ZNSt3__122__compressed_pair_elemINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repELi0ELb0EEC2B8ne180100ENS_18__default_init_tagE>
1000017f4: f94007e0    	ldr	x0, [sp, #0x8]
1000017f8: 9400000a    	bl	0x100001820 <__ZNSt3__122__compressed_pair_elemINS_9allocatorIcEELi1ELb1EEC2B8ne180100ENS_18__default_init_tagE>
1000017fc: f94007e0    	ldr	x0, [sp, #0x8]
100001800: a9437bfd    	ldp	x29, x30, [sp, #0x30]
100001804: 910103ff    	add	sp, sp, #0x40
100001808: d65f03c0    	ret

000000010000180c <__ZNSt3__122__compressed_pair_elemINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repELi0ELb0EEC2B8ne180100ENS_18__default_init_tagE>:
;   _LIBCPP_HIDE_FROM_ABI _LIBCPP_CONSTEXPR explicit __compressed_pair_elem(__default_init_tag) {}
10000180c: d10043ff    	sub	sp, sp, #0x10
100001810: f90003e0    	str	x0, [sp]
100001814: f94003e0    	ldr	x0, [sp]
100001818: 910043ff    	add	sp, sp, #0x10
10000181c: d65f03c0    	ret

0000000100001820 <__ZNSt3__122__compressed_pair_elemINS_9allocatorIcEELi1ELb1EEC2B8ne180100ENS_18__default_init_tagE>:
;   _LIBCPP_HIDE_FROM_ABI _LIBCPP_CONSTEXPR explicit __compressed_pair_elem(__default_init_tag) {}
100001820: d100c3ff    	sub	sp, sp, #0x30
100001824: a9027bfd    	stp	x29, x30, [sp, #0x20]
100001828: 910083fd    	add	x29, sp, #0x20
10000182c: f9000be0    	str	x0, [sp, #0x10]
100001830: f9400be0    	ldr	x0, [sp, #0x10]
100001834: f90007e0    	str	x0, [sp, #0x8]
100001838: 94000005    	bl	0x10000184c <__ZNSt3__19allocatorIcEC2B8ne180100Ev>
10000183c: f94007e0    	ldr	x0, [sp, #0x8]
100001840: a9427bfd    	ldp	x29, x30, [sp, #0x20]
100001844: 9100c3ff    	add	sp, sp, #0x30
100001848: d65f03c0    	ret

000000010000184c <__ZNSt3__19allocatorIcEC2B8ne180100Ev>:
;   _LIBCPP_HIDE_FROM_ABI _LIBCPP_CONSTEXPR_SINCE_CXX20 allocator() _NOEXCEPT = default;
10000184c: d10083ff    	sub	sp, sp, #0x20
100001850: a9017bfd    	stp	x29, x30, [sp, #0x10]
100001854: 910043fd    	add	x29, sp, #0x10
100001858: f90007e0    	str	x0, [sp, #0x8]
10000185c: f94007e0    	ldr	x0, [sp, #0x8]
100001860: f90003e0    	str	x0, [sp]
100001864: 94000005    	bl	0x100001878 <__ZNSt3__116__non_trivial_ifILb1ENS_9allocatorIcEEEC2B8ne180100Ev>
100001868: f94003e0    	ldr	x0, [sp]
10000186c: a9417bfd    	ldp	x29, x30, [sp, #0x10]
100001870: 910083ff    	add	sp, sp, #0x20
100001874: d65f03c0    	ret

0000000100001878 <__ZNSt3__116__non_trivial_ifILb1ENS_9allocatorIcEEEC2B8ne180100Ev>:
;   _LIBCPP_HIDE_FROM_ABI _LIBCPP_CONSTEXPR __non_trivial_if() _NOEXCEPT {}
100001878: d10043ff    	sub	sp, sp, #0x10
10000187c: f90007e0    	str	x0, [sp, #0x8]
100001880: f94007e0    	ldr	x0, [sp, #0x8]
100001884: 910043ff    	add	sp, sp, #0x10
100001888: d65f03c0    	ret

000000010000188c <__ZNSt3__118__constexpr_strlenB8ne180100EPKc>:
; inline _LIBCPP_HIDE_FROM_ABI _LIBCPP_CONSTEXPR_SINCE_CXX14 size_t __constexpr_strlen(const char* __str) {
10000188c: d10083ff    	sub	sp, sp, #0x20
100001890: a9017bfd    	stp	x29, x30, [sp, #0x10]
100001894: 910043fd    	add	x29, sp, #0x10
100001898: f90007e0    	str	x0, [sp, #0x8]
;   return __builtin_strlen(__str);
10000189c: f94007e0    	ldr	x0, [sp, #0x8]
1000018a0: 940008fd    	bl	0x100003c94 <_strlen+0x100003c94>
1000018a4: a9417bfd    	ldp	x29, x30, [sp, #0x10]
1000018a8: 910083ff    	add	sp, sp, #0x20
1000018ac: d65f03c0    	ret

00000001000018b0 <___clang_call_terminate>:
1000018b0: a9bf7bfd    	stp	x29, x30, [sp, #-0x10]!
1000018b4: 910003fd    	mov	x29, sp
1000018b8: 940008e2    	bl	0x100003c40 <_strlen+0x100003c40>
1000018bc: 940008d2    	bl	0x100003c04 <_strlen+0x100003c04>

00000001000018c0 <__ZN4SPMCIiED2Ev>:
; class SPMC {
1000018c0: d10083ff    	sub	sp, sp, #0x20
1000018c4: a9017bfd    	stp	x29, x30, [sp, #0x10]
1000018c8: 910043fd    	add	x29, sp, #0x10
1000018cc: f90007e0    	str	x0, [sp, #0x8]
1000018d0: f94007e0    	ldr	x0, [sp, #0x8]
1000018d4: f90003e0    	str	x0, [sp]
1000018d8: 94000005    	bl	0x1000018ec <__ZNSt3__110unique_ptrIA_iNS_14default_deleteIS1_EEED1B8ne180100Ev>
1000018dc: f94003e0    	ldr	x0, [sp]
1000018e0: a9417bfd    	ldp	x29, x30, [sp, #0x10]
1000018e4: 910083ff    	add	sp, sp, #0x20
1000018e8: d65f03c0    	ret

00000001000018ec <__ZNSt3__110unique_ptrIA_iNS_14default_deleteIS1_EEED1B8ne180100Ev>:
;   _LIBCPP_HIDE_FROM_ABI _LIBCPP_CONSTEXPR_SINCE_CXX23 ~unique_ptr() { reset(); }
1000018ec: d10083ff    	sub	sp, sp, #0x20
1000018f0: a9017bfd    	stp	x29, x30, [sp, #0x10]
1000018f4: 910043fd    	add	x29, sp, #0x10
1000018f8: f90007e0    	str	x0, [sp, #0x8]
1000018fc: f94007e0    	ldr	x0, [sp, #0x8]
100001900: f90003e0    	str	x0, [sp]
100001904: 94000005    	bl	0x100001918 <__ZNSt3__110unique_ptrIA_iNS_14default_deleteIS1_EEED2B8ne180100Ev>
100001908: f94003e0    	ldr	x0, [sp]
10000190c: a9417bfd    	ldp	x29, x30, [sp, #0x10]
100001910: 910083ff    	add	sp, sp, #0x20
100001914: d65f03c0    	ret

0000000100001918 <__ZNSt3__110unique_ptrIA_iNS_14default_deleteIS1_EEED2B8ne180100Ev>:
100001918: d10083ff    	sub	sp, sp, #0x20
10000191c: a9017bfd    	stp	x29, x30, [sp, #0x10]
100001920: 910043fd    	add	x29, sp, #0x10
100001924: f90007e0    	str	x0, [sp, #0x8]
100001928: f94007e0    	ldr	x0, [sp, #0x8]
10000192c: f90003e0    	str	x0, [sp]
100001930: d2800001    	mov	x1, #0x0                ; =0
100001934: 94000005    	bl	0x100001948 <__ZNSt3__110unique_ptrIA_iNS_14default_deleteIS1_EEE5resetB8ne180100EDn>
100001938: f94003e0    	ldr	x0, [sp]
10000193c: a9417bfd    	ldp	x29, x30, [sp, #0x10]
100001940: 910083ff    	add	sp, sp, #0x20
100001944: d65f03c0    	ret

0000000100001948 <__ZNSt3__110unique_ptrIA_iNS_14default_deleteIS1_EEE5resetB8ne180100EDn>:
;   _LIBCPP_HIDE_FROM_ABI _LIBCPP_CONSTEXPR_SINCE_CXX23 void reset(nullptr_t = nullptr) _NOEXCEPT {
100001948: d100c3ff    	sub	sp, sp, #0x30
10000194c: a9027bfd    	stp	x29, x30, [sp, #0x20]
100001950: 910083fd    	add	x29, sp, #0x20
100001954: f81f83a0    	stur	x0, [x29, #-0x8]
100001958: f9000be1    	str	x1, [sp, #0x10]
10000195c: f85f83a0    	ldur	x0, [x29, #-0x8]
100001960: f90003e0    	str	x0, [sp]
;     pointer __tmp  = __ptr_.first();
100001964: 94000012    	bl	0x1000019ac <__ZNSt3__117__compressed_pairIPiNS_14default_deleteIA_iEEE5firstB8ne180100Ev>
100001968: aa0003e8    	mov	x8, x0
10000196c: f94003e0    	ldr	x0, [sp]
100001970: f9400108    	ldr	x8, [x8]
100001974: f90007e8    	str	x8, [sp, #0x8]
;     __ptr_.first() = nullptr;
100001978: 9400000d    	bl	0x1000019ac <__ZNSt3__117__compressed_pairIPiNS_14default_deleteIA_iEEE5firstB8ne180100Ev>
10000197c: f900001f    	str	xzr, [x0]
;     if (__tmp)
100001980: f94007e8    	ldr	x8, [sp, #0x8]
100001984: b40000e8    	cbz	x8, 0x1000019a0 <__ZNSt3__110unique_ptrIA_iNS_14default_deleteIS1_EEE5resetB8ne180100EDn+0x58>
100001988: 14000001    	b	0x10000198c <__ZNSt3__110unique_ptrIA_iNS_14default_deleteIS1_EEE5resetB8ne180100EDn+0x44>
10000198c: f94003e0    	ldr	x0, [sp]
;       __ptr_.second()(__tmp);
100001990: 94000010    	bl	0x1000019d0 <__ZNSt3__117__compressed_pairIPiNS_14default_deleteIA_iEEE6secondB8ne180100Ev>
100001994: f94007e1    	ldr	x1, [sp, #0x8]
100001998: 94000859    	bl	0x100003afc <_strlen+0x100003afc>
10000199c: 14000001    	b	0x1000019a0 <__ZNSt3__110unique_ptrIA_iNS_14default_deleteIS1_EEE5resetB8ne180100EDn+0x58>
;   }
1000019a0: a9427bfd    	ldp	x29, x30, [sp, #0x20]
1000019a4: 9100c3ff    	add	sp, sp, #0x30
1000019a8: d65f03c0    	ret

00000001000019ac <__ZNSt3__117__compressed_pairIPiNS_14default_deleteIA_iEEE5firstB8ne180100Ev>:
;   _LIBCPP_HIDE_FROM_ABI _LIBCPP_CONSTEXPR_SINCE_CXX14 typename _Base1::reference first() _NOEXCEPT {
1000019ac: d10083ff    	sub	sp, sp, #0x20
1000019b0: a9017bfd    	stp	x29, x30, [sp, #0x10]
1000019b4: 910043fd    	add	x29, sp, #0x10
1000019b8: f90007e0    	str	x0, [sp, #0x8]
1000019bc: f94007e0    	ldr	x0, [sp, #0x8]
;     return static_cast<_Base1&>(*this).__get();
1000019c0: 9400001c    	bl	0x100001a30 <__ZNSt3__122__compressed_pair_elemIPiLi0ELb0EE5__getB8ne180100Ev>
1000019c4: a9417bfd    	ldp	x29, x30, [sp, #0x10]
1000019c8: 910083ff    	add	sp, sp, #0x20
1000019cc: d65f03c0    	ret

00000001000019d0 <__ZNSt3__117__compressed_pairIPiNS_14default_deleteIA_iEEE6secondB8ne180100Ev>:
;   _LIBCPP_HIDE_FROM_ABI _LIBCPP_CONSTEXPR_SINCE_CXX14 typename _Base2::reference second() _NOEXCEPT {
1000019d0: d10083ff    	sub	sp, sp, #0x20
1000019d4: a9017bfd    	stp	x29, x30, [sp, #0x10]
1000019d8: 910043fd    	add	x29, sp, #0x10
1000019dc: f90007e0    	str	x0, [sp, #0x8]
1000019e0: f94007e0    	ldr	x0, [sp, #0x8]
;     return static_cast<_Base2&>(*this).__get();
1000019e4: 94000018    	bl	0x100001a44 <__ZNSt3__122__compressed_pair_elemINS_14default_deleteIA_iEELi1ELb1EE5__getB8ne180100Ev>
1000019e8: a9417bfd    	ldp	x29, x30, [sp, #0x10]
1000019ec: 910083ff    	add	sp, sp, #0x20
1000019f0: d65f03c0    	ret

00000001000019f4 <__ZNKSt3__114default_deleteIA_iEclB8ne180100IiEENS2_20_EnableIfConvertibleIT_E4typeEPS5_>:
;   operator()(_Up* __ptr) const _NOEXCEPT {
1000019f4: d100c3ff    	sub	sp, sp, #0x30
1000019f8: a9027bfd    	stp	x29, x30, [sp, #0x20]
1000019fc: 910083fd    	add	x29, sp, #0x20
100001a00: f81f83a0    	stur	x0, [x29, #-0x8]
100001a04: f9000be1    	str	x1, [sp, #0x10]
;     delete[] __ptr;
100001a08: f9400be8    	ldr	x8, [sp, #0x10]
100001a0c: f90007e8    	str	x8, [sp, #0x8]
100001a10: b40000a8    	cbz	x8, 0x100001a24 <__ZNKSt3__114default_deleteIA_iEclB8ne180100IiEENS2_20_EnableIfConvertibleIT_E4typeEPS5_+0x30>
100001a14: 14000001    	b	0x100001a18 <__ZNKSt3__114default_deleteIA_iEclB8ne180100IiEENS2_20_EnableIfConvertibleIT_E4typeEPS5_+0x24>
100001a18: f94007e0    	ldr	x0, [sp, #0x8]
;     delete[] __ptr;
100001a1c: 9400087d    	bl	0x100003c10 <_strlen+0x100003c10>
100001a20: 14000001    	b	0x100001a24 <__ZNKSt3__114default_deleteIA_iEclB8ne180100IiEENS2_20_EnableIfConvertibleIT_E4typeEPS5_+0x30>
;   }
100001a24: a9427bfd    	ldp	x29, x30, [sp, #0x20]
100001a28: 9100c3ff    	add	sp, sp, #0x30
100001a2c: d65f03c0    	ret

0000000100001a30 <__ZNSt3__122__compressed_pair_elemIPiLi0ELb0EE5__getB8ne180100Ev>:
;   _LIBCPP_HIDE_FROM_ABI _LIBCPP_CONSTEXPR_SINCE_CXX14 reference __get() _NOEXCEPT { return __value_; }
100001a30: d10043ff    	sub	sp, sp, #0x10
100001a34: f90007e0    	str	x0, [sp, #0x8]
100001a38: f94007e0    	ldr	x0, [sp, #0x8]
100001a3c: 910043ff    	add	sp, sp, #0x10
100001a40: d65f03c0    	ret

0000000100001a44 <__ZNSt3__122__compressed_pair_elemINS_14default_deleteIA_iEELi1ELb1EE5__getB8ne180100Ev>:
;   _LIBCPP_HIDE_FROM_ABI _LIBCPP_CONSTEXPR_SINCE_CXX14 reference __get() _NOEXCEPT { return *this; }
100001a44: d10043ff    	sub	sp, sp, #0x10
100001a48: f90007e0    	str	x0, [sp, #0x8]
100001a4c: f94007e0    	ldr	x0, [sp, #0x8]
100001a50: 910043ff    	add	sp, sp, #0x10
100001a54: d65f03c0    	ret

0000000100001a58 <__ZN4SPMCIiEC2Ej>:
;   SPMC(u32 size) : _size(size) {
100001a58: d10143ff    	sub	sp, sp, #0x50
100001a5c: a9047bfd    	stp	x29, x30, [sp, #0x40]
100001a60: 910103fd    	add	x29, sp, #0x40
100001a64: f81f83a0    	stur	x0, [x29, #-0x8]
100001a68: b81f43a1    	stur	w1, [x29, #-0xc]
100001a6c: f85f83a0    	ldur	x0, [x29, #-0x8]
100001a70: f9000be0    	str	x0, [sp, #0x10]
100001a74: 9400002c    	bl	0x100001b24 <__ZNSt3__110unique_ptrIA_iNS_14default_deleteIS1_EEEC1B8ne180100ILb1EvEEv>
100001a78: f9400be8    	ldr	x8, [sp, #0x10]
100001a7c: b85f43a9    	ldur	w9, [x29, #-0xc]
100001a80: b9000909    	str	w9, [x8, #0x8]
100001a84: 91003100    	add	x0, x8, #0xc
100001a88: 94000032    	bl	0x100001b50 <__ZNSt3__16atomicIjEC1B8ne180100Ev>
100001a8c: f9400be8    	ldr	x8, [sp, #0x10]
100001a90: 91004100    	add	x0, x8, #0x10
100001a94: 9400002f    	bl	0x100001b50 <__ZNSt3__16atomicIjEC1B8ne180100Ev>
;     _buffer = std::make_unique<T[]>(size);
100001a98: b85f43a8    	ldur	w8, [x29, #-0xc]
100001a9c: aa0803e0    	mov	x0, x8
100001aa0: d10063a8    	sub	x8, x29, #0x18
100001aa4: 94000036    	bl	0x100001b7c <__ZNSt3__111make_uniqueB8ne180100IA_iEENS_11__unique_ifIT_E28__unique_array_unknown_boundEm>
100001aa8: 14000001    	b	0x100001aac <__ZN4SPMCIiEC2Ej+0x54>
100001aac: f9400be0    	ldr	x0, [sp, #0x10]
100001ab0: d10063a1    	sub	x1, x29, #0x18
100001ab4: f90003e1    	str	x1, [sp]
;     _buffer = std::make_unique<T[]>(size);
100001ab8: 94000048    	bl	0x100001bd8 <__ZNSt3__110unique_ptrIA_iNS_14default_deleteIS1_EEEaSB8ne180100EOS4_>
100001abc: f94003e0    	ldr	x0, [sp]
100001ac0: 97ffff8b    	bl	0x1000018ec <__ZNSt3__110unique_ptrIA_iNS_14default_deleteIS1_EEED1B8ne180100Ev>
100001ac4: f9400be8    	ldr	x8, [sp, #0x10]
;     _head.store(0, std::memory_order_relaxed);
100001ac8: 91003100    	add	x0, x8, #0xc
100001acc: 52800002    	mov	w2, #0x0                ; =0
100001ad0: b9000fe2    	str	w2, [sp, #0xc]
100001ad4: aa0203e1    	mov	x1, x2
100001ad8: 94000054    	bl	0x100001c28 <__ZNSt3__113__atomic_baseIjLb0EE5storeB8ne180100EjNS_12memory_orderE>
100001adc: b9400fe2    	ldr	w2, [sp, #0xc]
100001ae0: f9400be8    	ldr	x8, [sp, #0x10]
;     _tail.store(0, std::memory_order_relaxed);
100001ae4: 91004100    	add	x0, x8, #0x10
100001ae8: aa0203e1    	mov	x1, x2
100001aec: 9400004f    	bl	0x100001c28 <__ZNSt3__113__atomic_baseIjLb0EE5storeB8ne180100EjNS_12memory_orderE>
100001af0: f9400be0    	ldr	x0, [sp, #0x10]
;   }
100001af4: a9447bfd    	ldp	x29, x30, [sp, #0x40]
100001af8: 910143ff    	add	sp, sp, #0x50
100001afc: d65f03c0    	ret
100001b00: aa0003e8    	mov	x8, x0
100001b04: f9400be0    	ldr	x0, [sp, #0x10]
100001b08: f90013e8    	str	x8, [sp, #0x20]
100001b0c: aa0103e8    	mov	x8, x1
100001b10: b9001fe8    	str	w8, [sp, #0x1c]
100001b14: 97ffff76    	bl	0x1000018ec <__ZNSt3__110unique_ptrIA_iNS_14default_deleteIS1_EEED1B8ne180100Ev>
100001b18: 14000001    	b	0x100001b1c <__ZN4SPMCIiEC2Ej+0xc4>
100001b1c: f94013e0    	ldr	x0, [sp, #0x20]
100001b20: 940007ee    	bl	0x100003ad8 <_strlen+0x100003ad8>

0000000100001b24 <__ZNSt3__110unique_ptrIA_iNS_14default_deleteIS1_EEEC1B8ne180100ILb1EvEEv>:
;   _LIBCPP_HIDE_FROM_ABI _LIBCPP_CONSTEXPR unique_ptr() _NOEXCEPT : __ptr_(__value_init_tag(), __value_init_tag()) {}
100001b24: d10083ff    	sub	sp, sp, #0x20
100001b28: a9017bfd    	stp	x29, x30, [sp, #0x10]
100001b2c: 910043fd    	add	x29, sp, #0x10
100001b30: f90007e0    	str	x0, [sp, #0x8]
100001b34: f94007e0    	ldr	x0, [sp, #0x8]
100001b38: f90003e0    	str	x0, [sp]
100001b3c: 94000048    	bl	0x100001c5c <__ZNSt3__110unique_ptrIA_iNS_14default_deleteIS1_EEEC2B8ne180100ILb1EvEEv>
100001b40: f94003e0    	ldr	x0, [sp]
100001b44: a9417bfd    	ldp	x29, x30, [sp, #0x10]
100001b48: 910083ff    	add	sp, sp, #0x20
100001b4c: d65f03c0    	ret

0000000100001b50 <__ZNSt3__16atomicIjEC1B8ne180100Ev>:
;   _LIBCPP_HIDE_FROM_ABI atomic() = default;
100001b50: d10083ff    	sub	sp, sp, #0x20
100001b54: a9017bfd    	stp	x29, x30, [sp, #0x10]
100001b58: 910043fd    	add	x29, sp, #0x10
100001b5c: f90007e0    	str	x0, [sp, #0x8]
100001b60: f94007e0    	ldr	x0, [sp, #0x8]
100001b64: f90003e0    	str	x0, [sp]
100001b68: 94000075    	bl	0x100001d3c <__ZNSt3__16atomicIjEC2B8ne180100Ev>
100001b6c: f94003e0    	ldr	x0, [sp]
100001b70: a9417bfd    	ldp	x29, x30, [sp, #0x10]
100001b74: 910083ff    	add	sp, sp, #0x20
100001b78: d65f03c0    	ret

0000000100001b7c <__ZNSt3__111make_uniqueB8ne180100IA_iEENS_11__unique_ifIT_E28__unique_array_unknown_boundEm>:
; make_unique(size_t __n) {
100001b7c: d10103ff    	sub	sp, sp, #0x40
100001b80: a9037bfd    	stp	x29, x30, [sp, #0x30]
100001b84: 9100c3fd    	add	x29, sp, #0x30
100001b88: f9000be8    	str	x8, [sp, #0x10]
100001b8c: f81f83a8    	stur	x8, [x29, #-0x8]
100001b90: f81f03a0    	stur	x0, [x29, #-0x10]
;   return unique_ptr<_Tp>(new _Up[__n]());
100001b94: f85f03a8    	ldur	x8, [x29, #-0x10]
100001b98: d280008a    	mov	x10, #0x4               ; =4
100001b9c: 9bca7d09    	umulh	x9, x8, x10
100001ba0: 9b0a7d08    	mul	x8, x8, x10
100001ba4: f1000129    	subs	x9, x9, #0x0
100001ba8: da9f0100    	csinv	x0, x8, xzr, eq
100001bac: f90007e0    	str	x0, [sp, #0x8]
100001bb0: 9400081e    	bl	0x100003c28 <_strlen+0x100003c28>
100001bb4: f94007e1    	ldr	x1, [sp, #0x8]
100001bb8: f9000fe0    	str	x0, [sp, #0x18]
100001bbc: 94000827    	bl	0x100003c58 <_strlen+0x100003c58>
100001bc0: f9400be0    	ldr	x0, [sp, #0x10]
100001bc4: f9400fe1    	ldr	x1, [sp, #0x18]
100001bc8: 940000a1    	bl	0x100001e4c <__ZNSt3__110unique_ptrIA_iNS_14default_deleteIS1_EEEC1B8ne180100IPiLb1EvvEET_>
100001bcc: a9437bfd    	ldp	x29, x30, [sp, #0x30]
100001bd0: 910103ff    	add	sp, sp, #0x40
100001bd4: d65f03c0    	ret

0000000100001bd8 <__ZNSt3__110unique_ptrIA_iNS_14default_deleteIS1_EEEaSB8ne180100EOS4_>:
;   _LIBCPP_HIDE_FROM_ABI _LIBCPP_CONSTEXPR_SINCE_CXX23 unique_ptr& operator=(unique_ptr&& __u) _NOEXCEPT {
100001bd8: d100c3ff    	sub	sp, sp, #0x30
100001bdc: a9027bfd    	stp	x29, x30, [sp, #0x20]
100001be0: 910083fd    	add	x29, sp, #0x20
100001be4: f81f83a0    	stur	x0, [x29, #-0x8]
100001be8: f9000be1    	str	x1, [sp, #0x10]
100001bec: f85f83a8    	ldur	x8, [x29, #-0x8]
100001bf0: f90007e8    	str	x8, [sp, #0x8]
;     reset(__u.release());
100001bf4: f9400be0    	ldr	x0, [sp, #0x10]
100001bf8: 940000f7    	bl	0x100001fd4 <__ZNSt3__110unique_ptrIA_iNS_14default_deleteIS1_EEE7releaseB8ne180100Ev>
100001bfc: aa0003e1    	mov	x1, x0
100001c00: f94007e0    	ldr	x0, [sp, #0x8]
100001c04: 940007c7    	bl	0x100003b20 <_strlen+0x100003b20>
;     __ptr_.second() = std::forward<deleter_type>(__u.get_deleter());
100001c08: f9400be0    	ldr	x0, [sp, #0x10]
100001c0c: 94000103    	bl	0x100002018 <__ZNSt3__110unique_ptrIA_iNS_14default_deleteIS1_EEE11get_deleterB8ne180100Ev>
100001c10: f94007e0    	ldr	x0, [sp, #0x8]
100001c14: 97ffff6f    	bl	0x1000019d0 <__ZNSt3__117__compressed_pairIPiNS_14default_deleteIA_iEEE6secondB8ne180100Ev>
100001c18: f94007e0    	ldr	x0, [sp, #0x8]
;     return *this;
100001c1c: a9427bfd    	ldp	x29, x30, [sp, #0x20]
100001c20: 9100c3ff    	add	sp, sp, #0x30
100001c24: d65f03c0    	ret

0000000100001c28 <__ZNSt3__113__atomic_baseIjLb0EE5storeB8ne180100EjNS_12memory_orderE>:
;       _LIBCPP_CHECK_STORE_MEMORY_ORDER(__m) {
100001c28: d10083ff    	sub	sp, sp, #0x20
100001c2c: a9017bfd    	stp	x29, x30, [sp, #0x10]
100001c30: 910043fd    	add	x29, sp, #0x10
100001c34: f90007e0    	str	x0, [sp, #0x8]
100001c38: b90007e1    	str	w1, [sp, #0x4]
100001c3c: b90003e2    	str	w2, [sp]
100001c40: f94007e0    	ldr	x0, [sp, #0x8]
;     std::__cxx_atomic_store(std::addressof(__a_), __d, __m);
100001c44: b94007e1    	ldr	w1, [sp, #0x4]
100001c48: b94003e2    	ldr	w2, [sp]
100001c4c: 940000fc    	bl	0x10000203c <__ZNSt3__118__cxx_atomic_storeB8ne180100IjEEvPNS_22__cxx_atomic_base_implIT_EES2_NS_12memory_orderE>
;   }
100001c50: a9417bfd    	ldp	x29, x30, [sp, #0x10]
100001c54: 910083ff    	add	sp, sp, #0x20
100001c58: d65f03c0    	ret

0000000100001c5c <__ZNSt3__110unique_ptrIA_iNS_14default_deleteIS1_EEEC2B8ne180100ILb1EvEEv>:
;   _LIBCPP_HIDE_FROM_ABI _LIBCPP_CONSTEXPR unique_ptr() _NOEXCEPT : __ptr_(__value_init_tag(), __value_init_tag()) {}
100001c5c: d100c3ff    	sub	sp, sp, #0x30
100001c60: a9027bfd    	stp	x29, x30, [sp, #0x20]
100001c64: 910083fd    	add	x29, sp, #0x20
100001c68: f81f83a0    	stur	x0, [x29, #-0x8]
100001c6c: f85f83a0    	ldur	x0, [x29, #-0x8]
100001c70: f90007e0    	str	x0, [sp, #0x8]
100001c74: d10027a1    	sub	x1, x29, #0x9
100001c78: d1002ba2    	sub	x2, x29, #0xa
100001c7c: 94000007    	bl	0x100001c98 <__ZNSt3__117__compressed_pairIPiNS_14default_deleteIA_iEEEC1B8ne180100INS_16__value_init_tagES7_EEOT_OT0_>
100001c80: 14000001    	b	0x100001c84 <__ZNSt3__110unique_ptrIA_iNS_14default_deleteIS1_EEEC2B8ne180100ILb1EvEEv+0x28>
100001c84: f94007e0    	ldr	x0, [sp, #0x8]
;   _LIBCPP_HIDE_FROM_ABI _LIBCPP_CONSTEXPR unique_ptr() _NOEXCEPT : __ptr_(__value_init_tag(), __value_init_tag()) {}
100001c88: a9427bfd    	ldp	x29, x30, [sp, #0x20]
100001c8c: 9100c3ff    	add	sp, sp, #0x30
100001c90: d65f03c0    	ret
100001c94: 97ffff07    	bl	0x1000018b0 <___clang_call_terminate>

0000000100001c98 <__ZNSt3__117__compressed_pairIPiNS_14default_deleteIA_iEEEC1B8ne180100INS_16__value_init_tagES7_EEOT_OT0_>:
;       : _Base1(std::forward<_U1>(__t1)), _Base2(std::forward<_U2>(__t2)) {}
100001c98: d100c3ff    	sub	sp, sp, #0x30
100001c9c: a9027bfd    	stp	x29, x30, [sp, #0x20]
100001ca0: 910083fd    	add	x29, sp, #0x20
100001ca4: f81f83a0    	stur	x0, [x29, #-0x8]
100001ca8: f9000be1    	str	x1, [sp, #0x10]
100001cac: f90007e2    	str	x2, [sp, #0x8]
100001cb0: f85f83a0    	ldur	x0, [x29, #-0x8]
100001cb4: f90003e0    	str	x0, [sp]
100001cb8: f9400be1    	ldr	x1, [sp, #0x10]
100001cbc: f94007e2    	ldr	x2, [sp, #0x8]
100001cc0: 94000005    	bl	0x100001cd4 <__ZNSt3__117__compressed_pairIPiNS_14default_deleteIA_iEEEC2B8ne180100INS_16__value_init_tagES7_EEOT_OT0_>
100001cc4: f94003e0    	ldr	x0, [sp]
100001cc8: a9427bfd    	ldp	x29, x30, [sp, #0x20]
100001ccc: 9100c3ff    	add	sp, sp, #0x30
100001cd0: d65f03c0    	ret

0000000100001cd4 <__ZNSt3__117__compressed_pairIPiNS_14default_deleteIA_iEEEC2B8ne180100INS_16__value_init_tagES7_EEOT_OT0_>:
100001cd4: d10103ff    	sub	sp, sp, #0x40
100001cd8: a9037bfd    	stp	x29, x30, [sp, #0x30]
100001cdc: 9100c3fd    	add	x29, sp, #0x30
100001ce0: f81f83a0    	stur	x0, [x29, #-0x8]
100001ce4: f81f03a1    	stur	x1, [x29, #-0x10]
100001ce8: f9000fe2    	str	x2, [sp, #0x18]
100001cec: f85f83a0    	ldur	x0, [x29, #-0x8]
100001cf0: f90007e0    	str	x0, [sp, #0x8]
100001cf4: 94000007    	bl	0x100001d10 <__ZNSt3__122__compressed_pair_elemIPiLi0ELb0EEC2B8ne180100ENS_16__value_init_tagE>
100001cf8: f94007e0    	ldr	x0, [sp, #0x8]
100001cfc: 9400000b    	bl	0x100001d28 <__ZNSt3__122__compressed_pair_elemINS_14default_deleteIA_iEELi1ELb1EEC2B8ne180100ENS_16__value_init_tagE>
100001d00: f94007e0    	ldr	x0, [sp, #0x8]
100001d04: a9437bfd    	ldp	x29, x30, [sp, #0x30]
100001d08: 910103ff    	add	sp, sp, #0x40
100001d0c: d65f03c0    	ret

0000000100001d10 <__ZNSt3__122__compressed_pair_elemIPiLi0ELb0EEC2B8ne180100ENS_16__value_init_tagE>:
;   _LIBCPP_HIDE_FROM_ABI _LIBCPP_CONSTEXPR explicit __compressed_pair_elem(__value_init_tag) : __value_() {}
100001d10: d10043ff    	sub	sp, sp, #0x10
100001d14: f90003e0    	str	x0, [sp]
100001d18: f94003e0    	ldr	x0, [sp]
100001d1c: f900001f    	str	xzr, [x0]
100001d20: 910043ff    	add	sp, sp, #0x10
100001d24: d65f03c0    	ret

0000000100001d28 <__ZNSt3__122__compressed_pair_elemINS_14default_deleteIA_iEELi1ELb1EEC2B8ne180100ENS_16__value_init_tagE>:
;   _LIBCPP_HIDE_FROM_ABI _LIBCPP_CONSTEXPR explicit __compressed_pair_elem(__value_init_tag) : __value_type() {}
100001d28: d10043ff    	sub	sp, sp, #0x10
100001d2c: f90003e0    	str	x0, [sp]
100001d30: f94003e0    	ldr	x0, [sp]
100001d34: 910043ff    	add	sp, sp, #0x10
100001d38: d65f03c0    	ret

0000000100001d3c <__ZNSt3__16atomicIjEC2B8ne180100Ev>:
;   _LIBCPP_HIDE_FROM_ABI atomic() = default;
100001d3c: d10083ff    	sub	sp, sp, #0x20
100001d40: a9017bfd    	stp	x29, x30, [sp, #0x10]
100001d44: 910043fd    	add	x29, sp, #0x10
100001d48: f90007e0    	str	x0, [sp, #0x8]
100001d4c: f94007e0    	ldr	x0, [sp, #0x8]
100001d50: f90003e0    	str	x0, [sp]
100001d54: 94000005    	bl	0x100001d68 <__ZNSt3__113__atomic_baseIjLb1EEC2B8ne180100Ev>
100001d58: f94003e0    	ldr	x0, [sp]
100001d5c: a9417bfd    	ldp	x29, x30, [sp, #0x10]
100001d60: 910083ff    	add	sp, sp, #0x20
100001d64: d65f03c0    	ret

0000000100001d68 <__ZNSt3__113__atomic_baseIjLb1EEC2B8ne180100Ev>:
;   _LIBCPP_HIDE_FROM_ABI _LIBCPP_CONSTEXPR_SINCE_CXX20 __atomic_base() _NOEXCEPT = default;
100001d68: d10083ff    	sub	sp, sp, #0x20
100001d6c: a9017bfd    	stp	x29, x30, [sp, #0x10]
100001d70: 910043fd    	add	x29, sp, #0x10
100001d74: f90007e0    	str	x0, [sp, #0x8]
100001d78: f94007e0    	ldr	x0, [sp, #0x8]
100001d7c: f90003e0    	str	x0, [sp]
100001d80: 94000005    	bl	0x100001d94 <__ZNSt3__113__atomic_baseIjLb0EEC2B8ne180100Ev>
100001d84: f94003e0    	ldr	x0, [sp]
100001d88: a9417bfd    	ldp	x29, x30, [sp, #0x10]
100001d8c: 910083ff    	add	sp, sp, #0x20
100001d90: d65f03c0    	ret

0000000100001d94 <__ZNSt3__113__atomic_baseIjLb0EEC2B8ne180100Ev>:
;   _LIBCPP_HIDE_FROM_ABI constexpr __atomic_base() noexcept(is_nothrow_default_constructible_v<_Tp>) : __a_(_Tp()) {}
100001d94: d10083ff    	sub	sp, sp, #0x20
100001d98: a9017bfd    	stp	x29, x30, [sp, #0x10]
100001d9c: 910043fd    	add	x29, sp, #0x10
100001da0: f90007e0    	str	x0, [sp, #0x8]
100001da4: f94007e0    	ldr	x0, [sp, #0x8]
100001da8: f90003e0    	str	x0, [sp]
100001dac: 52800001    	mov	w1, #0x0                ; =0
100001db0: 94000005    	bl	0x100001dc4 <__ZNSt3__117__cxx_atomic_implIjNS_22__cxx_atomic_base_implIjEEEC1B8ne180100Ej>
100001db4: f94003e0    	ldr	x0, [sp]
100001db8: a9417bfd    	ldp	x29, x30, [sp, #0x10]
100001dbc: 910083ff    	add	sp, sp, #0x20
100001dc0: d65f03c0    	ret

0000000100001dc4 <__ZNSt3__117__cxx_atomic_implIjNS_22__cxx_atomic_base_implIjEEEC1B8ne180100Ej>:
;   _LIBCPP_HIDE_FROM_ABI _LIBCPP_CONSTEXPR explicit __cxx_atomic_impl(_Tp __value) _NOEXCEPT : _Base(__value) {}
100001dc4: d100c3ff    	sub	sp, sp, #0x30
100001dc8: a9027bfd    	stp	x29, x30, [sp, #0x20]
100001dcc: 910083fd    	add	x29, sp, #0x20
100001dd0: f81f83a0    	stur	x0, [x29, #-0x8]
100001dd4: b81f43a1    	stur	w1, [x29, #-0xc]
100001dd8: f85f83a0    	ldur	x0, [x29, #-0x8]
100001ddc: f90007e0    	str	x0, [sp, #0x8]
100001de0: b85f43a1    	ldur	w1, [x29, #-0xc]
100001de4: 94000005    	bl	0x100001df8 <__ZNSt3__117__cxx_atomic_implIjNS_22__cxx_atomic_base_implIjEEEC2B8ne180100Ej>
100001de8: f94007e0    	ldr	x0, [sp, #0x8]
100001dec: a9427bfd    	ldp	x29, x30, [sp, #0x20]
100001df0: 9100c3ff    	add	sp, sp, #0x30
100001df4: d65f03c0    	ret

0000000100001df8 <__ZNSt3__117__cxx_atomic_implIjNS_22__cxx_atomic_base_implIjEEEC2B8ne180100Ej>:
100001df8: d100c3ff    	sub	sp, sp, #0x30
100001dfc: a9027bfd    	stp	x29, x30, [sp, #0x20]
100001e00: 910083fd    	add	x29, sp, #0x20
100001e04: f81f83a0    	stur	x0, [x29, #-0x8]
100001e08: b81f43a1    	stur	w1, [x29, #-0xc]
100001e0c: f85f83a0    	ldur	x0, [x29, #-0x8]
100001e10: f90007e0    	str	x0, [sp, #0x8]
100001e14: b85f43a1    	ldur	w1, [x29, #-0xc]
100001e18: 94000005    	bl	0x100001e2c <__ZNSt3__122__cxx_atomic_base_implIjEC2Ej>
100001e1c: f94007e0    	ldr	x0, [sp, #0x8]
100001e20: a9427bfd    	ldp	x29, x30, [sp, #0x20]
100001e24: 9100c3ff    	add	sp, sp, #0x30
100001e28: d65f03c0    	ret

0000000100001e2c <__ZNSt3__122__cxx_atomic_base_implIjEC2Ej>:
;   _LIBCPP_CONSTEXPR explicit __cxx_atomic_base_impl(_Tp __value) _NOEXCEPT : __a_value(__value) {}
100001e2c: d10043ff    	sub	sp, sp, #0x10
100001e30: f90007e0    	str	x0, [sp, #0x8]
100001e34: b90007e1    	str	w1, [sp, #0x4]
100001e38: f94007e0    	ldr	x0, [sp, #0x8]
100001e3c: b94007e8    	ldr	w8, [sp, #0x4]
100001e40: b9000008    	str	w8, [x0]
100001e44: 910043ff    	add	sp, sp, #0x10
100001e48: d65f03c0    	ret

0000000100001e4c <__ZNSt3__110unique_ptrIA_iNS_14default_deleteIS1_EEEC1B8ne180100IPiLb1EvvEET_>:
;       : __ptr_(__p, __value_init_tag()) {}
100001e4c: d100c3ff    	sub	sp, sp, #0x30
100001e50: a9027bfd    	stp	x29, x30, [sp, #0x20]
100001e54: 910083fd    	add	x29, sp, #0x20
100001e58: f81f83a0    	stur	x0, [x29, #-0x8]
100001e5c: f9000be1    	str	x1, [sp, #0x10]
100001e60: f85f83a0    	ldur	x0, [x29, #-0x8]
100001e64: f90007e0    	str	x0, [sp, #0x8]
100001e68: f9400be1    	ldr	x1, [sp, #0x10]
100001e6c: 94000005    	bl	0x100001e80 <__ZNSt3__110unique_ptrIA_iNS_14default_deleteIS1_EEEC2B8ne180100IPiLb1EvvEET_>
100001e70: f94007e0    	ldr	x0, [sp, #0x8]
100001e74: a9427bfd    	ldp	x29, x30, [sp, #0x20]
100001e78: 9100c3ff    	add	sp, sp, #0x30
100001e7c: d65f03c0    	ret

0000000100001e80 <__ZNSt3__110unique_ptrIA_iNS_14default_deleteIS1_EEEC2B8ne180100IPiLb1EvvEET_>:
100001e80: d100c3ff    	sub	sp, sp, #0x30
100001e84: a9027bfd    	stp	x29, x30, [sp, #0x20]
100001e88: 910083fd    	add	x29, sp, #0x20
100001e8c: aa0103e8    	mov	x8, x1
100001e90: f81f83a0    	stur	x0, [x29, #-0x8]
100001e94: 910043e1    	add	x1, sp, #0x10
100001e98: f9000be8    	str	x8, [sp, #0x10]
100001e9c: f85f83a0    	ldur	x0, [x29, #-0x8]
100001ea0: f90003e0    	str	x0, [sp]
100001ea4: 91003fe2    	add	x2, sp, #0xf
100001ea8: 94000007    	bl	0x100001ec4 <__ZNSt3__117__compressed_pairIPiNS_14default_deleteIA_iEEEC1B8ne180100IRS1_NS_16__value_init_tagEEEOT_OT0_>
100001eac: 14000001    	b	0x100001eb0 <__ZNSt3__110unique_ptrIA_iNS_14default_deleteIS1_EEEC2B8ne180100IPiLb1EvvEET_+0x30>
100001eb0: f94003e0    	ldr	x0, [sp]
;       : __ptr_(__p, __value_init_tag()) {}
100001eb4: a9427bfd    	ldp	x29, x30, [sp, #0x20]
100001eb8: 9100c3ff    	add	sp, sp, #0x30
100001ebc: d65f03c0    	ret
100001ec0: 97fffe7c    	bl	0x1000018b0 <___clang_call_terminate>

0000000100001ec4 <__ZNSt3__117__compressed_pairIPiNS_14default_deleteIA_iEEEC1B8ne180100IRS1_NS_16__value_init_tagEEEOT_OT0_>:
;       : _Base1(std::forward<_U1>(__t1)), _Base2(std::forward<_U2>(__t2)) {}
100001ec4: d100c3ff    	sub	sp, sp, #0x30
100001ec8: a9027bfd    	stp	x29, x30, [sp, #0x20]
100001ecc: 910083fd    	add	x29, sp, #0x20
100001ed0: f81f83a0    	stur	x0, [x29, #-0x8]
100001ed4: f9000be1    	str	x1, [sp, #0x10]
100001ed8: f90007e2    	str	x2, [sp, #0x8]
100001edc: f85f83a0    	ldur	x0, [x29, #-0x8]
100001ee0: f90003e0    	str	x0, [sp]
100001ee4: f9400be1    	ldr	x1, [sp, #0x10]
100001ee8: f94007e2    	ldr	x2, [sp, #0x8]
100001eec: 94000005    	bl	0x100001f00 <__ZNSt3__117__compressed_pairIPiNS_14default_deleteIA_iEEEC2B8ne180100IRS1_NS_16__value_init_tagEEEOT_OT0_>
100001ef0: f94003e0    	ldr	x0, [sp]
100001ef4: a9427bfd    	ldp	x29, x30, [sp, #0x20]
100001ef8: 9100c3ff    	add	sp, sp, #0x30
100001efc: d65f03c0    	ret

0000000100001f00 <__ZNSt3__117__compressed_pairIPiNS_14default_deleteIA_iEEEC2B8ne180100IRS1_NS_16__value_init_tagEEEOT_OT0_>:
100001f00: d10103ff    	sub	sp, sp, #0x40
100001f04: a9037bfd    	stp	x29, x30, [sp, #0x30]
100001f08: 9100c3fd    	add	x29, sp, #0x30
100001f0c: f81f83a0    	stur	x0, [x29, #-0x8]
100001f10: f81f03a1    	stur	x1, [x29, #-0x10]
100001f14: f9000fe2    	str	x2, [sp, #0x18]
100001f18: f85f83a0    	ldur	x0, [x29, #-0x8]
100001f1c: f90007e0    	str	x0, [sp, #0x8]
100001f20: f85f03a1    	ldur	x1, [x29, #-0x10]
100001f24: 94000007    	bl	0x100001f40 <__ZNSt3__122__compressed_pair_elemIPiLi0ELb0EEC2B8ne180100IRS1_vEEOT_>
100001f28: f94007e0    	ldr	x0, [sp, #0x8]
100001f2c: 97ffff7f    	bl	0x100001d28 <__ZNSt3__122__compressed_pair_elemINS_14default_deleteIA_iEELi1ELb1EEC2B8ne180100ENS_16__value_init_tagE>
100001f30: f94007e0    	ldr	x0, [sp, #0x8]
100001f34: a9437bfd    	ldp	x29, x30, [sp, #0x30]
100001f38: 910103ff    	add	sp, sp, #0x40
100001f3c: d65f03c0    	ret

0000000100001f40 <__ZNSt3__122__compressed_pair_elemIPiLi0ELb0EEC2B8ne180100IRS1_vEEOT_>:
;       : __value_(std::forward<_Up>(__u)) {}
100001f40: d10043ff    	sub	sp, sp, #0x10
100001f44: f90007e0    	str	x0, [sp, #0x8]
100001f48: f90003e1    	str	x1, [sp]
100001f4c: f94007e0    	ldr	x0, [sp, #0x8]
100001f50: f94003e8    	ldr	x8, [sp]
100001f54: f9400108    	ldr	x8, [x8]
100001f58: f9000008    	str	x8, [x0]
100001f5c: 910043ff    	add	sp, sp, #0x10
100001f60: d65f03c0    	ret

0000000100001f64 <__ZNSt3__110unique_ptrIA_iNS_14default_deleteIS1_EEE5resetB8ne180100IPiTnNS_9enable_ifIXsr28_CheckArrayPointerConversionIT_EE5valueEiE4typeELi0EEEvS8_>:
;   _LIBCPP_HIDE_FROM_ABI _LIBCPP_CONSTEXPR_SINCE_CXX23 void reset(_Pp __p) _NOEXCEPT {
100001f64: d10103ff    	sub	sp, sp, #0x40
100001f68: a9037bfd    	stp	x29, x30, [sp, #0x30]
100001f6c: 9100c3fd    	add	x29, sp, #0x30
100001f70: f81f83a0    	stur	x0, [x29, #-0x8]
100001f74: f81f03a1    	stur	x1, [x29, #-0x10]
100001f78: f85f83a0    	ldur	x0, [x29, #-0x8]
100001f7c: f90007e0    	str	x0, [sp, #0x8]
;     pointer __tmp  = __ptr_.first();
100001f80: 97fffe8b    	bl	0x1000019ac <__ZNSt3__117__compressed_pairIPiNS_14default_deleteIA_iEEE5firstB8ne180100Ev>
100001f84: aa0003e8    	mov	x8, x0
100001f88: f94007e0    	ldr	x0, [sp, #0x8]
100001f8c: f9400108    	ldr	x8, [x8]
100001f90: f9000fe8    	str	x8, [sp, #0x18]
;     __ptr_.first() = __p;
100001f94: f85f03a8    	ldur	x8, [x29, #-0x10]
100001f98: f9000be8    	str	x8, [sp, #0x10]
100001f9c: 97fffe84    	bl	0x1000019ac <__ZNSt3__117__compressed_pairIPiNS_14default_deleteIA_iEEE5firstB8ne180100Ev>
100001fa0: f9400be8    	ldr	x8, [sp, #0x10]
100001fa4: f9000008    	str	x8, [x0]
;     if (__tmp)
100001fa8: f9400fe8    	ldr	x8, [sp, #0x18]
100001fac: b40000e8    	cbz	x8, 0x100001fc8 <__ZNSt3__110unique_ptrIA_iNS_14default_deleteIS1_EEE5resetB8ne180100IPiTnNS_9enable_ifIXsr28_CheckArrayPointerConversionIT_EE5valueEiE4typeELi0EEEvS8_+0x64>
100001fb0: 14000001    	b	0x100001fb4 <__ZNSt3__110unique_ptrIA_iNS_14default_deleteIS1_EEE5resetB8ne180100IPiTnNS_9enable_ifIXsr28_CheckArrayPointerConversionIT_EE5valueEiE4typeELi0EEEvS8_+0x50>
100001fb4: f94007e0    	ldr	x0, [sp, #0x8]
;       __ptr_.second()(__tmp);
100001fb8: 97fffe86    	bl	0x1000019d0 <__ZNSt3__117__compressed_pairIPiNS_14default_deleteIA_iEEE6secondB8ne180100Ev>
100001fbc: f9400fe1    	ldr	x1, [sp, #0x18]
100001fc0: 940006cf    	bl	0x100003afc <_strlen+0x100003afc>
100001fc4: 14000001    	b	0x100001fc8 <__ZNSt3__110unique_ptrIA_iNS_14default_deleteIS1_EEE5resetB8ne180100IPiTnNS_9enable_ifIXsr28_CheckArrayPointerConversionIT_EE5valueEiE4typeELi0EEEvS8_+0x64>
;   }
100001fc8: a9437bfd    	ldp	x29, x30, [sp, #0x30]
100001fcc: 910103ff    	add	sp, sp, #0x40
100001fd0: d65f03c0    	ret

0000000100001fd4 <__ZNSt3__110unique_ptrIA_iNS_14default_deleteIS1_EEE7releaseB8ne180100Ev>:
;   _LIBCPP_HIDE_FROM_ABI _LIBCPP_CONSTEXPR_SINCE_CXX23 pointer release() _NOEXCEPT {
100001fd4: d100c3ff    	sub	sp, sp, #0x30
100001fd8: a9027bfd    	stp	x29, x30, [sp, #0x20]
100001fdc: 910083fd    	add	x29, sp, #0x20
100001fe0: f81f83a0    	stur	x0, [x29, #-0x8]
100001fe4: f85f83a0    	ldur	x0, [x29, #-0x8]
100001fe8: f90007e0    	str	x0, [sp, #0x8]
;     pointer __t    = __ptr_.first();
100001fec: 97fffe70    	bl	0x1000019ac <__ZNSt3__117__compressed_pairIPiNS_14default_deleteIA_iEEE5firstB8ne180100Ev>
100001ff0: aa0003e8    	mov	x8, x0
100001ff4: f94007e0    	ldr	x0, [sp, #0x8]
100001ff8: f9400108    	ldr	x8, [x8]
100001ffc: f9000be8    	str	x8, [sp, #0x10]
;     __ptr_.first() = pointer();
100002000: 97fffe6b    	bl	0x1000019ac <__ZNSt3__117__compressed_pairIPiNS_14default_deleteIA_iEEE5firstB8ne180100Ev>
100002004: f900001f    	str	xzr, [x0]
;     return __t;
100002008: f9400be0    	ldr	x0, [sp, #0x10]
10000200c: a9427bfd    	ldp	x29, x30, [sp, #0x20]
100002010: 9100c3ff    	add	sp, sp, #0x30
100002014: d65f03c0    	ret

0000000100002018 <__ZNSt3__110unique_ptrIA_iNS_14default_deleteIS1_EEE11get_deleterB8ne180100Ev>:
;   _LIBCPP_HIDE_FROM_ABI _LIBCPP_CONSTEXPR_SINCE_CXX23 deleter_type& get_deleter() _NOEXCEPT { return __ptr_.second(); }
100002018: d10083ff    	sub	sp, sp, #0x20
10000201c: a9017bfd    	stp	x29, x30, [sp, #0x10]
100002020: 910043fd    	add	x29, sp, #0x10
100002024: f90007e0    	str	x0, [sp, #0x8]
100002028: f94007e0    	ldr	x0, [sp, #0x8]
10000202c: 97fffe69    	bl	0x1000019d0 <__ZNSt3__117__compressed_pairIPiNS_14default_deleteIA_iEEE6secondB8ne180100Ev>
100002030: a9417bfd    	ldp	x29, x30, [sp, #0x10]
100002034: 910083ff    	add	sp, sp, #0x20
100002038: d65f03c0    	ret

000000010000203c <__ZNSt3__118__cxx_atomic_storeB8ne180100IjEEvPNS_22__cxx_atomic_base_implIT_EES2_NS_12memory_orderE>:
; __cxx_atomic_store(__cxx_atomic_base_impl<_Tp>* __a, _Tp __val, memory_order __order) _NOEXCEPT {
10000203c: d10083ff    	sub	sp, sp, #0x20
100002040: f9000fe0    	str	x0, [sp, #0x18]
100002044: b90017e1    	str	w1, [sp, #0x14]
100002048: b90013e2    	str	w2, [sp, #0x10]
;   __c11_atomic_store(std::addressof(__a->__a_value), __val, static_cast<__memory_order_underlying_t>(__order));
10000204c: f9400fe8    	ldr	x8, [sp, #0x18]
100002050: f90003e8    	str	x8, [sp]
100002054: b94013e8    	ldr	w8, [sp, #0x10]
100002058: b9000be8    	str	w8, [sp, #0x8]
10000205c: b94017e9    	ldr	w9, [sp, #0x14]
100002060: b9000fe9    	str	w9, [sp, #0xc]
100002064: 71000d08    	subs	w8, w8, #0x3
100002068: 54000140    	b.eq	0x100002090 <__ZNSt3__118__cxx_atomic_storeB8ne180100IjEEvPNS_22__cxx_atomic_base_implIT_EES2_NS_12memory_orderE+0x54>
10000206c: 14000001    	b	0x100002070 <__ZNSt3__118__cxx_atomic_storeB8ne180100IjEEvPNS_22__cxx_atomic_base_implIT_EES2_NS_12memory_orderE+0x34>
100002070: b9400be8    	ldr	w8, [sp, #0x8]
;   __c11_atomic_store(std::addressof(__a->__a_value), __val, static_cast<__memory_order_underlying_t>(__order));
100002074: 71001508    	subs	w8, w8, #0x5
100002078: 54000140    	b.eq	0x1000020a0 <__ZNSt3__118__cxx_atomic_storeB8ne180100IjEEvPNS_22__cxx_atomic_base_implIT_EES2_NS_12memory_orderE+0x64>
10000207c: 14000001    	b	0x100002080 <__ZNSt3__118__cxx_atomic_storeB8ne180100IjEEvPNS_22__cxx_atomic_base_implIT_EES2_NS_12memory_orderE+0x44>
100002080: f94003e9    	ldr	x9, [sp]
;   __c11_atomic_store(std::addressof(__a->__a_value), __val, static_cast<__memory_order_underlying_t>(__order));
100002084: b9400fe8    	ldr	w8, [sp, #0xc]
100002088: b9000128    	str	w8, [x9]
10000208c: 14000009    	b	0x1000020b0 <__ZNSt3__118__cxx_atomic_storeB8ne180100IjEEvPNS_22__cxx_atomic_base_implIT_EES2_NS_12memory_orderE+0x74>
100002090: f94003e9    	ldr	x9, [sp]
;   __c11_atomic_store(std::addressof(__a->__a_value), __val, static_cast<__memory_order_underlying_t>(__order));
100002094: b9400fe8    	ldr	w8, [sp, #0xc]
100002098: 889ffd28    	stlr	w8, [x9]
10000209c: 14000005    	b	0x1000020b0 <__ZNSt3__118__cxx_atomic_storeB8ne180100IjEEvPNS_22__cxx_atomic_base_implIT_EES2_NS_12memory_orderE+0x74>
1000020a0: f94003e9    	ldr	x9, [sp]
;   __c11_atomic_store(std::addressof(__a->__a_value), __val, static_cast<__memory_order_underlying_t>(__order));
1000020a4: b9400fe8    	ldr	w8, [sp, #0xc]
1000020a8: 889ffd28    	stlr	w8, [x9]
1000020ac: 14000001    	b	0x1000020b0 <__ZNSt3__118__cxx_atomic_storeB8ne180100IjEEvPNS_22__cxx_atomic_base_implIT_EES2_NS_12memory_orderE+0x74>
; }
1000020b0: 910083ff    	add	sp, sp, #0x20
1000020b4: d65f03c0    	ret

00000001000020b8 <__ZNSt3__16threadC2IZ4mainE3$_0JEvEEOT_DpOT0_>:
; thread::thread(_Fp&& __f, _Args&&... __args) {
1000020b8: d101c3ff    	sub	sp, sp, #0x70
1000020bc: a9067bfd    	stp	x29, x30, [sp, #0x60]
1000020c0: 910183fd    	add	x29, sp, #0x60
1000020c4: f81f83a0    	stur	x0, [x29, #-0x8]
1000020c8: f81f03a1    	stur	x1, [x29, #-0x10]
1000020cc: f85f83a8    	ldur	x8, [x29, #-0x8]
1000020d0: f9000fe8    	str	x8, [sp, #0x18]
;   _TSPtr __tsp(new __thread_struct);
1000020d4: d2800100    	mov	x0, #0x8                ; =8
1000020d8: 940006d7    	bl	0x100003c34 <_strlen+0x100003c34>
1000020dc: f90013e0    	str	x0, [sp, #0x20]
1000020e0: 940006ab    	bl	0x100003b8c <_strlen+0x100003b8c>
1000020e4: 14000001    	b	0x1000020e8 <__ZNSt3__16threadC2IZ4mainE3$_0JEvEEOT_DpOT0_+0x30>
1000020e8: f94013e1    	ldr	x1, [sp, #0x20]
;   _TSPtr __tsp(new __thread_struct);
1000020ec: d10063a0    	sub	x0, x29, #0x18
1000020f0: 94000042    	bl	0x1000021f8 <__ZNSt3__110unique_ptrINS_15__thread_structENS_14default_deleteIS1_EEEC1B8ne180100ILb1EvEEPS1_>
;   unique_ptr<_Gp> __p(new _Gp(std::move(__tsp), std::forward<_Fp>(__f), std::forward<_Args>(__args)...));
1000020f4: d2800200    	mov	x0, #0x10               ; =16
1000020f8: 940006cf    	bl	0x100003c34 <_strlen+0x100003c34>
1000020fc: f9000be0    	str	x0, [sp, #0x10]
100002100: 14000001    	b	0x100002104 <__ZNSt3__16threadC2IZ4mainE3$_0JEvEEOT_DpOT0_+0x4c>
100002104: f9400be0    	ldr	x0, [sp, #0x10]
;   unique_ptr<_Gp> __p(new _Gp(std::move(__tsp), std::forward<_Fp>(__f), std::forward<_Args>(__args)...));
100002108: f85f03a2    	ldur	x2, [x29, #-0x10]
10000210c: d10063a1    	sub	x1, x29, #0x18
100002110: 94000047    	bl	0x10000222c <__ZNSt3__15tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS2_EEEEZ4mainE3$_0EEC1B8ne180100IJS5_S6_ETnNS_9enable_ifIXsr4_AndINS_17integral_constantIbXeqsZT_sZT_EEENS7_17_EnableUTypesCtorIJDpT_EEEEE5valueEiE4typeELi0EEEDpOSD_>
100002114: f9400be1    	ldr	x1, [sp, #0x10]
100002118: 9100c3e0    	add	x0, sp, #0x30
10000211c: f90003e0    	str	x0, [sp]
100002120: 94000052    	bl	0x100002268 <__ZNSt3__110unique_ptrINS_5tupleIJNS0_INS_15__thread_structENS_14default_deleteIS2_EEEEZ4mainE3$_0EEENS3_IS7_EEEC1B8ne180100ILb1EvEEPS7_>
100002124: f94003e0    	ldr	x0, [sp]
;   int __ec = std::__libcpp_thread_create(&__t_, &__thread_proxy<_Gp>, __p.get());
100002128: 9400008f    	bl	0x100002364 <__ZNKSt3__110unique_ptrINS_5tupleIJNS0_INS_15__thread_structENS_14default_deleteIS2_EEEEZ4mainE3$_0EEENS3_IS7_EEE3getB8ne180100Ev>
10000212c: aa0003e2    	mov	x2, x0
100002130: f9400fe0    	ldr	x0, [sp, #0x18]
100002134: 90000001    	adrp	x1, 0x100002000 <__ZNSt3__110unique_ptrIA_iNS_14default_deleteIS1_EEE7releaseB8ne180100Ev+0x2c>
100002138: 910b5021    	add	x1, x1, #0x2d4
10000213c: 94000058    	bl	0x10000229c <__ZNSt3__122__libcpp_thread_createB8ne180100EPP17_opaque_pthread_tPFPvS3_ES3_>
100002140: b9000fe0    	str	w0, [sp, #0xc]
100002144: 14000001    	b	0x100002148 <__ZNSt3__16threadC2IZ4mainE3$_0JEvEEOT_DpOT0_+0x90>
100002148: b9400fe8    	ldr	w8, [sp, #0xc]
;   int __ec = std::__libcpp_thread_create(&__t_, &__thread_proxy<_Gp>, __p.get());
10000214c: b9002fe8    	str	w8, [sp, #0x2c]
;   if (__ec == 0)
100002150: b9402fe8    	ldr	w8, [sp, #0x2c]
100002154: 350002c8    	cbnz	w8, 0x1000021ac <__ZNSt3__16threadC2IZ4mainE3$_0JEvEEOT_DpOT0_+0xf4>
100002158: 14000001    	b	0x10000215c <__ZNSt3__16threadC2IZ4mainE3$_0JEvEEOT_DpOT0_+0xa4>
;     __p.release();
10000215c: 9100c3e0    	add	x0, sp, #0x30
100002160: 9400008b    	bl	0x10000238c <__ZNSt3__110unique_ptrINS_5tupleIJNS0_INS_15__thread_structENS_14default_deleteIS2_EEEEZ4mainE3$_0EEENS3_IS7_EEE7releaseB8ne180100Ev>
100002164: 14000018    	b	0x1000021c4 <__ZNSt3__16threadC2IZ4mainE3$_0JEvEEOT_DpOT0_+0x10c>
; }
100002168: aa0003e8    	mov	x8, x0
10000216c: f94013e0    	ldr	x0, [sp, #0x20]
100002170: f81e03a8    	stur	x8, [x29, #-0x20]
100002174: aa0103e8    	mov	x8, x1
100002178: b81dc3a8    	stur	w8, [x29, #-0x24]
;   _TSPtr __tsp(new __thread_struct);
10000217c: 940006a8    	bl	0x100003c1c <_strlen+0x100003c1c>
100002180: 1400001c    	b	0x1000021f0 <__ZNSt3__16threadC2IZ4mainE3$_0JEvEEOT_DpOT0_+0x138>
; }
100002184: f81e03a0    	stur	x0, [x29, #-0x20]
100002188: aa0103e8    	mov	x8, x1
10000218c: b81dc3a8    	stur	w8, [x29, #-0x24]
100002190: 14000015    	b	0x1000021e4 <__ZNSt3__16threadC2IZ4mainE3$_0JEvEEOT_DpOT0_+0x12c>
100002194: f81e03a0    	stur	x0, [x29, #-0x20]
100002198: aa0103e8    	mov	x8, x1
10000219c: b81dc3a8    	stur	w8, [x29, #-0x24]
1000021a0: 9100c3e0    	add	x0, sp, #0x30
1000021a4: 9400008b    	bl	0x1000023d0 <__ZNSt3__110unique_ptrINS_5tupleIJNS0_INS_15__thread_structENS_14default_deleteIS2_EEEEZ4mainE3$_0EEENS3_IS7_EEED1B8ne180100Ev>
1000021a8: 1400000f    	b	0x1000021e4 <__ZNSt3__16threadC2IZ4mainE3$_0JEvEEOT_DpOT0_+0x12c>
;     __throw_system_error(__ec, "thread constructor failed");
1000021ac: b9402fe0    	ldr	w0, [sp, #0x2c]
1000021b0: b0000001    	adrp	x1, 0x100003000 <__ZNSt3__116__pad_and_outputB8ne180100IcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_+0x10>
1000021b4: 91371021    	add	x1, x1, #0xdc4
1000021b8: 9400067e    	bl	0x100003bb0 <_strlen+0x100003bb0>
1000021bc: 14000001    	b	0x1000021c0 <__ZNSt3__16threadC2IZ4mainE3$_0JEvEEOT_DpOT0_+0x108>
1000021c0: d4200020    	brk	#0x1
; }
1000021c4: 9100c3e0    	add	x0, sp, #0x30
1000021c8: 94000082    	bl	0x1000023d0 <__ZNSt3__110unique_ptrINS_5tupleIJNS0_INS_15__thread_structENS_14default_deleteIS2_EEEEZ4mainE3$_0EEENS3_IS7_EEED1B8ne180100Ev>
1000021cc: d10063a0    	sub	x0, x29, #0x18
1000021d0: 9400008b    	bl	0x1000023fc <__ZNSt3__110unique_ptrINS_15__thread_structENS_14default_deleteIS1_EEED1B8ne180100Ev>
1000021d4: f9400fe0    	ldr	x0, [sp, #0x18]
1000021d8: a9467bfd    	ldp	x29, x30, [sp, #0x60]
1000021dc: 9101c3ff    	add	sp, sp, #0x70
1000021e0: d65f03c0    	ret
1000021e4: d10063a0    	sub	x0, x29, #0x18
1000021e8: 94000085    	bl	0x1000023fc <__ZNSt3__110unique_ptrINS_15__thread_structENS_14default_deleteIS1_EEED1B8ne180100Ev>
1000021ec: 14000001    	b	0x1000021f0 <__ZNSt3__16threadC2IZ4mainE3$_0JEvEEOT_DpOT0_+0x138>
;   _TSPtr __tsp(new __thread_struct);
1000021f0: f85e03a0    	ldur	x0, [x29, #-0x20]
1000021f4: 94000639    	bl	0x100003ad8 <_strlen+0x100003ad8>

00000001000021f8 <__ZNSt3__110unique_ptrINS_15__thread_structENS_14default_deleteIS1_EEEC1B8ne180100ILb1EvEEPS1_>:
;       : __ptr_(__p, __value_init_tag()) {}
1000021f8: d100c3ff    	sub	sp, sp, #0x30
1000021fc: a9027bfd    	stp	x29, x30, [sp, #0x20]
100002200: 910083fd    	add	x29, sp, #0x20
100002204: f81f83a0    	stur	x0, [x29, #-0x8]
100002208: f9000be1    	str	x1, [sp, #0x10]
10000220c: f85f83a0    	ldur	x0, [x29, #-0x8]
100002210: f90007e0    	str	x0, [sp, #0x8]
100002214: f9400be1    	ldr	x1, [sp, #0x10]
100002218: 94000084    	bl	0x100002428 <__ZNSt3__110unique_ptrINS_15__thread_structENS_14default_deleteIS1_EEEC2B8ne180100ILb1EvEEPS1_>
10000221c: f94007e0    	ldr	x0, [sp, #0x8]
100002220: a9427bfd    	ldp	x29, x30, [sp, #0x20]
100002224: 9100c3ff    	add	sp, sp, #0x30
100002228: d65f03c0    	ret

000000010000222c <__ZNSt3__15tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS2_EEEEZ4mainE3$_0EEC1B8ne180100IJS5_S6_ETnNS_9enable_ifIXsr4_AndINS_17integral_constantIbXeqsZT_sZT_EEENS7_17_EnableUTypesCtorIJDpT_EEEEE5valueEiE4typeELi0EEEDpOSD_>:
;                 std::forward<_Up>(__u)...) {}
10000222c: d100c3ff    	sub	sp, sp, #0x30
100002230: a9027bfd    	stp	x29, x30, [sp, #0x20]
100002234: 910083fd    	add	x29, sp, #0x20
100002238: f81f83a0    	stur	x0, [x29, #-0x8]
10000223c: f9000be1    	str	x1, [sp, #0x10]
100002240: f90007e2    	str	x2, [sp, #0x8]
100002244: f85f83a0    	ldur	x0, [x29, #-0x8]
100002248: f90003e0    	str	x0, [sp]
10000224c: f9400be1    	ldr	x1, [sp, #0x10]
100002250: f94007e2    	ldr	x2, [sp, #0x8]
100002254: 940000b3    	bl	0x100002520 <__ZNSt3__15tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS2_EEEEZ4mainE3$_0EEC2B8ne180100IJS5_S6_ETnNS_9enable_ifIXsr4_AndINS_17integral_constantIbXeqsZT_sZT_EEENS7_17_EnableUTypesCtorIJDpT_EEEEE5valueEiE4typeELi0EEEDpOSD_>
100002258: f94003e0    	ldr	x0, [sp]
10000225c: a9427bfd    	ldp	x29, x30, [sp, #0x20]
100002260: 9100c3ff    	add	sp, sp, #0x30
100002264: d65f03c0    	ret

0000000100002268 <__ZNSt3__110unique_ptrINS_5tupleIJNS0_INS_15__thread_structENS_14default_deleteIS2_EEEEZ4mainE3$_0EEENS3_IS7_EEEC1B8ne180100ILb1EvEEPS7_>:
;       : __ptr_(__p, __value_init_tag()) {}
100002268: d100c3ff    	sub	sp, sp, #0x30
10000226c: a9027bfd    	stp	x29, x30, [sp, #0x20]
100002270: 910083fd    	add	x29, sp, #0x20
100002274: f81f83a0    	stur	x0, [x29, #-0x8]
100002278: f9000be1    	str	x1, [sp, #0x10]
10000227c: f85f83a0    	ldur	x0, [x29, #-0x8]
100002280: f90007e0    	str	x0, [sp, #0x8]
100002284: f9400be1    	ldr	x1, [sp, #0x10]
100002288: 94000176    	bl	0x100002860 <__ZNSt3__110unique_ptrINS_5tupleIJNS0_INS_15__thread_structENS_14default_deleteIS2_EEEEZ4mainE3$_0EEENS3_IS7_EEEC2B8ne180100ILb1EvEEPS7_>
10000228c: f94007e0    	ldr	x0, [sp, #0x8]
100002290: a9427bfd    	ldp	x29, x30, [sp, #0x20]
100002294: 9100c3ff    	add	sp, sp, #0x30
100002298: d65f03c0    	ret

000000010000229c <__ZNSt3__122__libcpp_thread_createB8ne180100EPP17_opaque_pthread_tPFPvS3_ES3_>:
; int __libcpp_thread_create(__libcpp_thread_t* __t, void* (*__func)(void*), void* __arg) {
10000229c: d100c3ff    	sub	sp, sp, #0x30
1000022a0: a9027bfd    	stp	x29, x30, [sp, #0x20]
1000022a4: 910083fd    	add	x29, sp, #0x20
1000022a8: f81f83a0    	stur	x0, [x29, #-0x8]
1000022ac: f9000be1    	str	x1, [sp, #0x10]
1000022b0: f90007e2    	str	x2, [sp, #0x8]
;   return pthread_create(__t, nullptr, __func, __arg);
1000022b4: f85f83a0    	ldur	x0, [x29, #-0x8]
1000022b8: f9400be2    	ldr	x2, [sp, #0x10]
1000022bc: f94007e3    	ldr	x3, [sp, #0x8]
1000022c0: d2800001    	mov	x1, #0x0                ; =0
1000022c4: 94000668    	bl	0x100003c64 <_strlen+0x100003c64>
1000022c8: a9427bfd    	ldp	x29, x30, [sp, #0x20]
1000022cc: 9100c3ff    	add	sp, sp, #0x30
1000022d0: d65f03c0    	ret

00000001000022d4 <__ZNSt3__114__thread_proxyB8ne180100INS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEEZ4mainE3$_0EEEEEPvS9_>:
; _LIBCPP_HIDE_FROM_ABI void* __thread_proxy(void* __vp) {
1000022d4: d10103ff    	sub	sp, sp, #0x40
1000022d8: a9037bfd    	stp	x29, x30, [sp, #0x30]
1000022dc: 9100c3fd    	add	x29, sp, #0x30
1000022e0: f81f83a0    	stur	x0, [x29, #-0x8]
;   unique_ptr<_Fp> __p(static_cast<_Fp*>(__vp));
1000022e4: f85f83a1    	ldur	x1, [x29, #-0x8]
1000022e8: d10043a0    	sub	x0, x29, #0x10
1000022ec: 97ffffdf    	bl	0x100002268 <__ZNSt3__110unique_ptrINS_5tupleIJNS0_INS_15__thread_structENS_14default_deleteIS2_EEEEZ4mainE3$_0EEENS3_IS7_EEEC1B8ne180100ILb1EvEEPS7_>
;   __thread_local_data().set_pointer(std::get<0>(*__p.get()).release());
1000022f0: 9400062d    	bl	0x100003ba4 <_strlen+0x100003ba4>
1000022f4: f90007e0    	str	x0, [sp, #0x8]
1000022f8: 14000001    	b	0x1000022fc <__ZNSt3__114__thread_proxyB8ne180100INS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEEZ4mainE3$_0EEEEEPvS9_+0x28>
1000022fc: d10043a0    	sub	x0, x29, #0x10
100002300: 94000019    	bl	0x100002364 <__ZNKSt3__110unique_ptrINS_5tupleIJNS0_INS_15__thread_structENS_14default_deleteIS2_EEEEZ4mainE3$_0EEENS3_IS7_EEE3getB8ne180100Ev>
100002304: 940001a1    	bl	0x100002988 <__ZNSt3__13getB8ne180100ILm0EJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS2_EEEEZ4mainE3$_0EEERNS_13tuple_elementIXT_ENS_5tupleIJDpT0_EEEE4typeERSB_>
100002308: 940000f1    	bl	0x1000026cc <__ZNSt3__110unique_ptrINS_15__thread_structENS_14default_deleteIS1_EEE7releaseB8ne180100Ev>
10000230c: aa0003e1    	mov	x1, x0
100002310: f94007e0    	ldr	x0, [sp, #0x8]
100002314: 9400062a    	bl	0x100003bbc <_strlen+0x100003bbc>
100002318: 14000001    	b	0x10000231c <__ZNSt3__114__thread_proxyB8ne180100INS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEEZ4mainE3$_0EEEEEPvS9_+0x48>
;   std::__thread_execute(*__p.get(), _Index());
10000231c: d10043a0    	sub	x0, x29, #0x10
100002320: 94000011    	bl	0x100002364 <__ZNKSt3__110unique_ptrINS_5tupleIJNS0_INS_15__thread_structENS_14default_deleteIS2_EEEEZ4mainE3$_0EEENS3_IS7_EEE3getB8ne180100Ev>
100002324: 940001a2    	bl	0x1000029ac <__ZNSt3__116__thread_executeB8ne180100INS_10unique_ptrINS_15__thread_structENS_14default_deleteIS2_EEEEZ4mainE3$_0JETpTnmJEEEvRNS_5tupleIJT_T0_DpT1_EEENS_15__tuple_indicesIJXspT2_EEEE>
100002328: 14000001    	b	0x10000232c <__ZNSt3__114__thread_proxyB8ne180100INS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEEZ4mainE3$_0EEEEEPvS9_+0x58>
; }
10000232c: d10043a0    	sub	x0, x29, #0x10
100002330: 94000028    	bl	0x1000023d0 <__ZNSt3__110unique_ptrINS_5tupleIJNS0_INS_15__thread_structENS_14default_deleteIS2_EEEEZ4mainE3$_0EEENS3_IS7_EEED1B8ne180100Ev>
100002334: d2800000    	mov	x0, #0x0                ; =0
100002338: a9437bfd    	ldp	x29, x30, [sp, #0x30]
10000233c: 910103ff    	add	sp, sp, #0x40
100002340: d65f03c0    	ret
100002344: f9000fe0    	str	x0, [sp, #0x18]
100002348: aa0103e8    	mov	x8, x1
10000234c: b90017e8    	str	w8, [sp, #0x14]
100002350: d10043a0    	sub	x0, x29, #0x10
100002354: 9400001f    	bl	0x1000023d0 <__ZNSt3__110unique_ptrINS_5tupleIJNS0_INS_15__thread_structENS_14default_deleteIS2_EEEEZ4mainE3$_0EEENS3_IS7_EEED1B8ne180100Ev>
100002358: 14000001    	b	0x10000235c <__ZNSt3__114__thread_proxyB8ne180100INS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEEZ4mainE3$_0EEEEEPvS9_+0x88>
10000235c: f9400fe0    	ldr	x0, [sp, #0x18]
100002360: 940005de    	bl	0x100003ad8 <_strlen+0x100003ad8>

0000000100002364 <__ZNKSt3__110unique_ptrINS_5tupleIJNS0_INS_15__thread_structENS_14default_deleteIS2_EEEEZ4mainE3$_0EEENS3_IS7_EEE3getB8ne180100Ev>:
;   _LIBCPP_HIDE_FROM_ABI _LIBCPP_CONSTEXPR_SINCE_CXX23 pointer get() const _NOEXCEPT { return __ptr_.first(); }
100002364: d10083ff    	sub	sp, sp, #0x20
100002368: a9017bfd    	stp	x29, x30, [sp, #0x10]
10000236c: 910043fd    	add	x29, sp, #0x10
100002370: f90007e0    	str	x0, [sp, #0x8]
100002374: f94007e0    	ldr	x0, [sp, #0x8]
100002378: 94000505    	bl	0x10000378c <__ZNKSt3__117__compressed_pairIPNS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEEZ4mainE3$_0EEENS4_IS8_EEE5firstB8ne180100Ev>
10000237c: f9400000    	ldr	x0, [x0]
100002380: a9417bfd    	ldp	x29, x30, [sp, #0x10]
100002384: 910083ff    	add	sp, sp, #0x20
100002388: d65f03c0    	ret

000000010000238c <__ZNSt3__110unique_ptrINS_5tupleIJNS0_INS_15__thread_structENS_14default_deleteIS2_EEEEZ4mainE3$_0EEENS3_IS7_EEE7releaseB8ne180100Ev>:
;   _LIBCPP_HIDE_FROM_ABI _LIBCPP_CONSTEXPR_SINCE_CXX23 pointer release() _NOEXCEPT {
10000238c: d100c3ff    	sub	sp, sp, #0x30
100002390: a9027bfd    	stp	x29, x30, [sp, #0x20]
100002394: 910083fd    	add	x29, sp, #0x20
100002398: f81f83a0    	stur	x0, [x29, #-0x8]
10000239c: f85f83a0    	ldur	x0, [x29, #-0x8]
1000023a0: f90007e0    	str	x0, [sp, #0x8]
;     pointer __t    = __ptr_.first();
1000023a4: 94000508    	bl	0x1000037c4 <__ZNSt3__117__compressed_pairIPNS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEEZ4mainE3$_0EEENS4_IS8_EEE5firstB8ne180100Ev>
1000023a8: aa0003e8    	mov	x8, x0
1000023ac: f94007e0    	ldr	x0, [sp, #0x8]
1000023b0: f9400108    	ldr	x8, [x8]
1000023b4: f9000be8    	str	x8, [sp, #0x10]
;     __ptr_.first() = pointer();
1000023b8: 94000503    	bl	0x1000037c4 <__ZNSt3__117__compressed_pairIPNS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEEZ4mainE3$_0EEENS4_IS8_EEE5firstB8ne180100Ev>
1000023bc: f900001f    	str	xzr, [x0]
;     return __t;
1000023c0: f9400be0    	ldr	x0, [sp, #0x10]
1000023c4: a9427bfd    	ldp	x29, x30, [sp, #0x20]
1000023c8: 9100c3ff    	add	sp, sp, #0x30
1000023cc: d65f03c0    	ret

00000001000023d0 <__ZNSt3__110unique_ptrINS_5tupleIJNS0_INS_15__thread_structENS_14default_deleteIS2_EEEEZ4mainE3$_0EEENS3_IS7_EEED1B8ne180100Ev>:
;   _LIBCPP_HIDE_FROM_ABI _LIBCPP_CONSTEXPR_SINCE_CXX23 ~unique_ptr() { reset(); }
1000023d0: d10083ff    	sub	sp, sp, #0x20
1000023d4: a9017bfd    	stp	x29, x30, [sp, #0x10]
1000023d8: 910043fd    	add	x29, sp, #0x10
1000023dc: f90007e0    	str	x0, [sp, #0x8]
1000023e0: f94007e0    	ldr	x0, [sp, #0x8]
1000023e4: f90003e0    	str	x0, [sp]
1000023e8: 94000505    	bl	0x1000037fc <__ZNSt3__110unique_ptrINS_5tupleIJNS0_INS_15__thread_structENS_14default_deleteIS2_EEEEZ4mainE3$_0EEENS3_IS7_EEED2B8ne180100Ev>
1000023ec: f94003e0    	ldr	x0, [sp]
1000023f0: a9417bfd    	ldp	x29, x30, [sp, #0x10]
1000023f4: 910083ff    	add	sp, sp, #0x20
1000023f8: d65f03c0    	ret

00000001000023fc <__ZNSt3__110unique_ptrINS_15__thread_structENS_14default_deleteIS1_EEED1B8ne180100Ev>:
1000023fc: d10083ff    	sub	sp, sp, #0x20
100002400: a9017bfd    	stp	x29, x30, [sp, #0x10]
100002404: 910043fd    	add	x29, sp, #0x10
100002408: f90007e0    	str	x0, [sp, #0x8]
10000240c: f94007e0    	ldr	x0, [sp, #0x8]
100002410: f90003e0    	str	x0, [sp]
100002414: 94000578    	bl	0x1000039f4 <__ZNSt3__110unique_ptrINS_15__thread_structENS_14default_deleteIS1_EEED2B8ne180100Ev>
100002418: f94003e0    	ldr	x0, [sp]
10000241c: a9417bfd    	ldp	x29, x30, [sp, #0x10]
100002420: 910083ff    	add	sp, sp, #0x20
100002424: d65f03c0    	ret

0000000100002428 <__ZNSt3__110unique_ptrINS_15__thread_structENS_14default_deleteIS1_EEEC2B8ne180100ILb1EvEEPS1_>:
;       : __ptr_(__p, __value_init_tag()) {}
100002428: d100c3ff    	sub	sp, sp, #0x30
10000242c: a9027bfd    	stp	x29, x30, [sp, #0x20]
100002430: 910083fd    	add	x29, sp, #0x20
100002434: aa0103e8    	mov	x8, x1
100002438: f81f83a0    	stur	x0, [x29, #-0x8]
10000243c: 910043e1    	add	x1, sp, #0x10
100002440: f9000be8    	str	x8, [sp, #0x10]
100002444: f85f83a0    	ldur	x0, [x29, #-0x8]
100002448: f90003e0    	str	x0, [sp]
10000244c: 91003fe2    	add	x2, sp, #0xf
100002450: 94000007    	bl	0x10000246c <__ZNSt3__117__compressed_pairIPNS_15__thread_structENS_14default_deleteIS1_EEEC1B8ne180100IRS2_NS_16__value_init_tagEEEOT_OT0_>
100002454: 14000001    	b	0x100002458 <__ZNSt3__110unique_ptrINS_15__thread_structENS_14default_deleteIS1_EEEC2B8ne180100ILb1EvEEPS1_+0x30>
100002458: f94003e0    	ldr	x0, [sp]
;       : __ptr_(__p, __value_init_tag()) {}
10000245c: a9427bfd    	ldp	x29, x30, [sp, #0x20]
100002460: 9100c3ff    	add	sp, sp, #0x30
100002464: d65f03c0    	ret
100002468: 97fffd12    	bl	0x1000018b0 <___clang_call_terminate>

000000010000246c <__ZNSt3__117__compressed_pairIPNS_15__thread_structENS_14default_deleteIS1_EEEC1B8ne180100IRS2_NS_16__value_init_tagEEEOT_OT0_>:
;       : _Base1(std::forward<_U1>(__t1)), _Base2(std::forward<_U2>(__t2)) {}
10000246c: d100c3ff    	sub	sp, sp, #0x30
100002470: a9027bfd    	stp	x29, x30, [sp, #0x20]
100002474: 910083fd    	add	x29, sp, #0x20
100002478: f81f83a0    	stur	x0, [x29, #-0x8]
10000247c: f9000be1    	str	x1, [sp, #0x10]
100002480: f90007e2    	str	x2, [sp, #0x8]
100002484: f85f83a0    	ldur	x0, [x29, #-0x8]
100002488: f90003e0    	str	x0, [sp]
10000248c: f9400be1    	ldr	x1, [sp, #0x10]
100002490: f94007e2    	ldr	x2, [sp, #0x8]
100002494: 94000005    	bl	0x1000024a8 <__ZNSt3__117__compressed_pairIPNS_15__thread_structENS_14default_deleteIS1_EEEC2B8ne180100IRS2_NS_16__value_init_tagEEEOT_OT0_>
100002498: f94003e0    	ldr	x0, [sp]
10000249c: a9427bfd    	ldp	x29, x30, [sp, #0x20]
1000024a0: 9100c3ff    	add	sp, sp, #0x30
1000024a4: d65f03c0    	ret

00000001000024a8 <__ZNSt3__117__compressed_pairIPNS_15__thread_structENS_14default_deleteIS1_EEEC2B8ne180100IRS2_NS_16__value_init_tagEEEOT_OT0_>:
1000024a8: d10103ff    	sub	sp, sp, #0x40
1000024ac: a9037bfd    	stp	x29, x30, [sp, #0x30]
1000024b0: 9100c3fd    	add	x29, sp, #0x30
1000024b4: f81f83a0    	stur	x0, [x29, #-0x8]
1000024b8: f81f03a1    	stur	x1, [x29, #-0x10]
1000024bc: f9000fe2    	str	x2, [sp, #0x18]
1000024c0: f85f83a0    	ldur	x0, [x29, #-0x8]
1000024c4: f90007e0    	str	x0, [sp, #0x8]
1000024c8: f85f03a1    	ldur	x1, [x29, #-0x10]
1000024cc: 94000007    	bl	0x1000024e8 <__ZNSt3__122__compressed_pair_elemIPNS_15__thread_structELi0ELb0EEC2B8ne180100IRS2_vEEOT_>
1000024d0: f94007e0    	ldr	x0, [sp, #0x8]
1000024d4: 9400000e    	bl	0x10000250c <__ZNSt3__122__compressed_pair_elemINS_14default_deleteINS_15__thread_structEEELi1ELb1EEC2B8ne180100ENS_16__value_init_tagE>
1000024d8: f94007e0    	ldr	x0, [sp, #0x8]
1000024dc: a9437bfd    	ldp	x29, x30, [sp, #0x30]
1000024e0: 910103ff    	add	sp, sp, #0x40
1000024e4: d65f03c0    	ret

00000001000024e8 <__ZNSt3__122__compressed_pair_elemIPNS_15__thread_structELi0ELb0EEC2B8ne180100IRS2_vEEOT_>:
;       : __value_(std::forward<_Up>(__u)) {}
1000024e8: d10043ff    	sub	sp, sp, #0x10
1000024ec: f90007e0    	str	x0, [sp, #0x8]
1000024f0: f90003e1    	str	x1, [sp]
1000024f4: f94007e0    	ldr	x0, [sp, #0x8]
1000024f8: f94003e8    	ldr	x8, [sp]
1000024fc: f9400108    	ldr	x8, [x8]
100002500: f9000008    	str	x8, [x0]
100002504: 910043ff    	add	sp, sp, #0x10
100002508: d65f03c0    	ret

000000010000250c <__ZNSt3__122__compressed_pair_elemINS_14default_deleteINS_15__thread_structEEELi1ELb1EEC2B8ne180100ENS_16__value_init_tagE>:
;   _LIBCPP_HIDE_FROM_ABI _LIBCPP_CONSTEXPR explicit __compressed_pair_elem(__value_init_tag) : __value_type() {}
10000250c: d10043ff    	sub	sp, sp, #0x10
100002510: f90003e0    	str	x0, [sp]
100002514: f94003e0    	ldr	x0, [sp]
100002518: 910043ff    	add	sp, sp, #0x10
10000251c: d65f03c0    	ret

0000000100002520 <__ZNSt3__15tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS2_EEEEZ4mainE3$_0EEC2B8ne180100IJS5_S6_ETnNS_9enable_ifIXsr4_AndINS_17integral_constantIbXeqsZT_sZT_EEENS7_17_EnableUTypesCtorIJDpT_EEEEE5valueEiE4typeELi0EEEDpOSD_>:
;                 std::forward<_Up>(__u)...) {}
100002520: d10103ff    	sub	sp, sp, #0x40
100002524: a9037bfd    	stp	x29, x30, [sp, #0x30]
100002528: 9100c3fd    	add	x29, sp, #0x30
10000252c: f81f83a0    	stur	x0, [x29, #-0x8]
100002530: f81f03a1    	stur	x1, [x29, #-0x10]
100002534: f9000fe2    	str	x2, [sp, #0x18]
100002538: f85f83a0    	ldur	x0, [x29, #-0x8]
10000253c: f90007e0    	str	x0, [sp, #0x8]
100002540: f85f03a1    	ldur	x1, [x29, #-0x10]
100002544: f9400fe2    	ldr	x2, [sp, #0x18]
;       : __base_(typename __make_tuple_indices<sizeof...(_Up)>::type(),
100002548: 94000005    	bl	0x10000255c <__ZNSt3__112__tuple_implINS_15__tuple_indicesIJLm0ELm1EEEEJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS4_EEEEZ4mainE3$_0EEC1B8ne180100IJLm0ELm1EEJS7_S8_ETpTnmJEJEJS7_S8_EEENS1_IJXspT_EEEENS_13__tuple_typesIJDpT0_EEENS1_IJXspT1_EEEENSC_IJDpT2_EEEDpOT3_>
10000254c: f94007e0    	ldr	x0, [sp, #0x8]
;                 std::forward<_Up>(__u)...) {}
100002550: a9437bfd    	ldp	x29, x30, [sp, #0x30]
100002554: 910103ff    	add	sp, sp, #0x40
100002558: d65f03c0    	ret

000000010000255c <__ZNSt3__112__tuple_implINS_15__tuple_indicesIJLm0ELm1EEEEJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS4_EEEEZ4mainE3$_0EEC1B8ne180100IJLm0ELm1EEJS7_S8_ETpTnmJEJEJS7_S8_EEENS1_IJXspT_EEEENS_13__tuple_typesIJDpT0_EEENS1_IJXspT1_EEEENSC_IJDpT2_EEEDpOT3_>:
;       : __tuple_leaf<_Uf, _Tf>(std::forward<_Up>(__u))..., __tuple_leaf<_Ul, _Tl>()... {}
10000255c: d10103ff    	sub	sp, sp, #0x40
100002560: a9037bfd    	stp	x29, x30, [sp, #0x30]
100002564: 9100c3fd    	add	x29, sp, #0x30
100002568: f81f03a0    	stur	x0, [x29, #-0x10]
10000256c: f9000fe1    	str	x1, [sp, #0x18]
100002570: f9000be2    	str	x2, [sp, #0x10]
100002574: f85f03a0    	ldur	x0, [x29, #-0x10]
100002578: f90007e0    	str	x0, [sp, #0x8]
10000257c: f9400fe1    	ldr	x1, [sp, #0x18]
100002580: f9400be2    	ldr	x2, [sp, #0x10]
100002584: 94000005    	bl	0x100002598 <__ZNSt3__112__tuple_implINS_15__tuple_indicesIJLm0ELm1EEEEJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS4_EEEEZ4mainE3$_0EEC2B8ne180100IJLm0ELm1EEJS7_S8_ETpTnmJEJEJS7_S8_EEENS1_IJXspT_EEEENS_13__tuple_typesIJDpT0_EEENS1_IJXspT1_EEEENSC_IJDpT2_EEEDpOT3_>
100002588: f94007e0    	ldr	x0, [sp, #0x8]
10000258c: a9437bfd    	ldp	x29, x30, [sp, #0x30]
100002590: 910103ff    	add	sp, sp, #0x40
100002594: d65f03c0    	ret

0000000100002598 <__ZNSt3__112__tuple_implINS_15__tuple_indicesIJLm0ELm1EEEEJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS4_EEEEZ4mainE3$_0EEC2B8ne180100IJLm0ELm1EEJS7_S8_ETpTnmJEJEJS7_S8_EEENS1_IJXspT_EEEENS_13__tuple_typesIJDpT0_EEENS1_IJXspT1_EEEENSC_IJDpT2_EEEDpOT3_>:
100002598: d10103ff    	sub	sp, sp, #0x40
10000259c: a9037bfd    	stp	x29, x30, [sp, #0x30]
1000025a0: 9100c3fd    	add	x29, sp, #0x30
1000025a4: f81f03a0    	stur	x0, [x29, #-0x10]
1000025a8: f9000fe1    	str	x1, [sp, #0x18]
1000025ac: f9000be2    	str	x2, [sp, #0x10]
1000025b0: f85f03a0    	ldur	x0, [x29, #-0x10]
1000025b4: f90007e0    	str	x0, [sp, #0x8]
1000025b8: f9400fe1    	ldr	x1, [sp, #0x18]
1000025bc: 94000009    	bl	0x1000025e0 <__ZNSt3__112__tuple_leafILm0ENS_10unique_ptrINS_15__thread_structENS_14default_deleteIS2_EEEELb0EEC2B8ne180100IS5_vEEOT_>
1000025c0: f94007e8    	ldr	x8, [sp, #0x8]
1000025c4: f9400be1    	ldr	x1, [sp, #0x10]
1000025c8: 91002100    	add	x0, x8, #0x8
1000025cc: 94000012    	bl	0x100002614 <__ZNSt3__112__tuple_leafILm1EZ4mainE3$_0Lb0EEC2B8ne180100IS1_vEEOT_>
1000025d0: f94007e0    	ldr	x0, [sp, #0x8]
1000025d4: a9437bfd    	ldp	x29, x30, [sp, #0x30]
1000025d8: 910103ff    	add	sp, sp, #0x40
1000025dc: d65f03c0    	ret

00000001000025e0 <__ZNSt3__112__tuple_leafILm0ENS_10unique_ptrINS_15__thread_structENS_14default_deleteIS2_EEEELb0EEC2B8ne180100IS5_vEEOT_>:
;       : __value_(std::forward<_Tp>(__t)) {
1000025e0: d100c3ff    	sub	sp, sp, #0x30
1000025e4: a9027bfd    	stp	x29, x30, [sp, #0x20]
1000025e8: 910083fd    	add	x29, sp, #0x20
1000025ec: f81f83a0    	stur	x0, [x29, #-0x8]
1000025f0: f9000be1    	str	x1, [sp, #0x10]
1000025f4: f85f83a0    	ldur	x0, [x29, #-0x8]
1000025f8: f90007e0    	str	x0, [sp, #0x8]
1000025fc: f9400be1    	ldr	x1, [sp, #0x10]
100002600: 9400000e    	bl	0x100002638 <__ZNSt3__110unique_ptrINS_15__thread_structENS_14default_deleteIS1_EEEC1B8ne180100EOS4_>
100002604: f94007e0    	ldr	x0, [sp, #0x8]
;   }
100002608: a9427bfd    	ldp	x29, x30, [sp, #0x20]
10000260c: 9100c3ff    	add	sp, sp, #0x30
100002610: d65f03c0    	ret

0000000100002614 <__ZNSt3__112__tuple_leafILm1EZ4mainE3$_0Lb0EEC2B8ne180100IS1_vEEOT_>:
;       : __value_(std::forward<_Tp>(__t)) {
100002614: d10043ff    	sub	sp, sp, #0x10
100002618: f90007e0    	str	x0, [sp, #0x8]
10000261c: f90003e1    	str	x1, [sp]
100002620: f94007e0    	ldr	x0, [sp, #0x8]
100002624: f94003e8    	ldr	x8, [sp]
100002628: f9400108    	ldr	x8, [x8]
10000262c: f9000008    	str	x8, [x0]
;   }
100002630: 910043ff    	add	sp, sp, #0x10
100002634: d65f03c0    	ret

0000000100002638 <__ZNSt3__110unique_ptrINS_15__thread_structENS_14default_deleteIS1_EEEC1B8ne180100EOS4_>:
;       : __ptr_(__u.release(), std::forward<deleter_type>(__u.get_deleter())) {}
100002638: d100c3ff    	sub	sp, sp, #0x30
10000263c: a9027bfd    	stp	x29, x30, [sp, #0x20]
100002640: 910083fd    	add	x29, sp, #0x20
100002644: f81f83a0    	stur	x0, [x29, #-0x8]
100002648: f9000be1    	str	x1, [sp, #0x10]
10000264c: f85f83a0    	ldur	x0, [x29, #-0x8]
100002650: f90007e0    	str	x0, [sp, #0x8]
100002654: f9400be1    	ldr	x1, [sp, #0x10]
100002658: 94000005    	bl	0x10000266c <__ZNSt3__110unique_ptrINS_15__thread_structENS_14default_deleteIS1_EEEC2B8ne180100EOS4_>
10000265c: f94007e0    	ldr	x0, [sp, #0x8]
100002660: a9427bfd    	ldp	x29, x30, [sp, #0x20]
100002664: 9100c3ff    	add	sp, sp, #0x30
100002668: d65f03c0    	ret

000000010000266c <__ZNSt3__110unique_ptrINS_15__thread_structENS_14default_deleteIS1_EEEC2B8ne180100EOS4_>:
10000266c: d10103ff    	sub	sp, sp, #0x40
100002670: a9037bfd    	stp	x29, x30, [sp, #0x30]
100002674: 9100c3fd    	add	x29, sp, #0x30
100002678: f81f83a0    	stur	x0, [x29, #-0x8]
10000267c: f81f03a1    	stur	x1, [x29, #-0x10]
100002680: f85f83a8    	ldur	x8, [x29, #-0x8]
100002684: f9000be8    	str	x8, [sp, #0x10]
100002688: f85f03a0    	ldur	x0, [x29, #-0x10]
10000268c: 94000010    	bl	0x1000026cc <__ZNSt3__110unique_ptrINS_15__thread_structENS_14default_deleteIS1_EEE7releaseB8ne180100Ev>
100002690: 910063e8    	add	x8, sp, #0x18
100002694: f90007e8    	str	x8, [sp, #0x8]
100002698: f9000fe0    	str	x0, [sp, #0x18]
10000269c: f85f03a0    	ldur	x0, [x29, #-0x10]
1000026a0: 9400001c    	bl	0x100002710 <__ZNSt3__110unique_ptrINS_15__thread_structENS_14default_deleteIS1_EEE11get_deleterB8ne180100Ev>
1000026a4: f94007e1    	ldr	x1, [sp, #0x8]
1000026a8: aa0003e2    	mov	x2, x0
1000026ac: f9400be0    	ldr	x0, [sp, #0x10]
1000026b0: 94000021    	bl	0x100002734 <__ZNSt3__117__compressed_pairIPNS_15__thread_structENS_14default_deleteIS1_EEEC1B8ne180100IS2_S4_EEOT_OT0_>
1000026b4: 14000001    	b	0x1000026b8 <__ZNSt3__110unique_ptrINS_15__thread_structENS_14default_deleteIS1_EEEC2B8ne180100EOS4_+0x4c>
1000026b8: f9400be0    	ldr	x0, [sp, #0x10]
;       : __ptr_(__u.release(), std::forward<deleter_type>(__u.get_deleter())) {}
1000026bc: a9437bfd    	ldp	x29, x30, [sp, #0x30]
1000026c0: 910103ff    	add	sp, sp, #0x40
1000026c4: d65f03c0    	ret
1000026c8: 97fffc7a    	bl	0x1000018b0 <___clang_call_terminate>

00000001000026cc <__ZNSt3__110unique_ptrINS_15__thread_structENS_14default_deleteIS1_EEE7releaseB8ne180100Ev>:
;   _LIBCPP_HIDE_FROM_ABI _LIBCPP_CONSTEXPR_SINCE_CXX23 pointer release() _NOEXCEPT {
1000026cc: d100c3ff    	sub	sp, sp, #0x30
1000026d0: a9027bfd    	stp	x29, x30, [sp, #0x20]
1000026d4: 910083fd    	add	x29, sp, #0x20
1000026d8: f81f83a0    	stur	x0, [x29, #-0x8]
1000026dc: f85f83a0    	ldur	x0, [x29, #-0x8]
1000026e0: f90007e0    	str	x0, [sp, #0x8]
;     pointer __t    = __ptr_.first();
1000026e4: 94000023    	bl	0x100002770 <__ZNSt3__117__compressed_pairIPNS_15__thread_structENS_14default_deleteIS1_EEE5firstB8ne180100Ev>
1000026e8: aa0003e8    	mov	x8, x0
1000026ec: f94007e0    	ldr	x0, [sp, #0x8]
1000026f0: f9400108    	ldr	x8, [x8]
1000026f4: f9000be8    	str	x8, [sp, #0x10]
;     __ptr_.first() = pointer();
1000026f8: 9400001e    	bl	0x100002770 <__ZNSt3__117__compressed_pairIPNS_15__thread_structENS_14default_deleteIS1_EEE5firstB8ne180100Ev>
1000026fc: f900001f    	str	xzr, [x0]
;     return __t;
100002700: f9400be0    	ldr	x0, [sp, #0x10]
100002704: a9427bfd    	ldp	x29, x30, [sp, #0x20]
100002708: 9100c3ff    	add	sp, sp, #0x30
10000270c: d65f03c0    	ret

0000000100002710 <__ZNSt3__110unique_ptrINS_15__thread_structENS_14default_deleteIS1_EEE11get_deleterB8ne180100Ev>:
;   _LIBCPP_HIDE_FROM_ABI _LIBCPP_CONSTEXPR_SINCE_CXX23 deleter_type& get_deleter() _NOEXCEPT { return __ptr_.second(); }
100002710: d10083ff    	sub	sp, sp, #0x20
100002714: a9017bfd    	stp	x29, x30, [sp, #0x10]
100002718: 910043fd    	add	x29, sp, #0x10
10000271c: f90007e0    	str	x0, [sp, #0x8]
100002720: f94007e0    	ldr	x0, [sp, #0x8]
100002724: 94000021    	bl	0x1000027a8 <__ZNSt3__117__compressed_pairIPNS_15__thread_structENS_14default_deleteIS1_EEE6secondB8ne180100Ev>
100002728: a9417bfd    	ldp	x29, x30, [sp, #0x10]
10000272c: 910083ff    	add	sp, sp, #0x20
100002730: d65f03c0    	ret

0000000100002734 <__ZNSt3__117__compressed_pairIPNS_15__thread_structENS_14default_deleteIS1_EEEC1B8ne180100IS2_S4_EEOT_OT0_>:
;       : _Base1(std::forward<_U1>(__t1)), _Base2(std::forward<_U2>(__t2)) {}
100002734: d100c3ff    	sub	sp, sp, #0x30
100002738: a9027bfd    	stp	x29, x30, [sp, #0x20]
10000273c: 910083fd    	add	x29, sp, #0x20
100002740: f81f83a0    	stur	x0, [x29, #-0x8]
100002744: f9000be1    	str	x1, [sp, #0x10]
100002748: f90007e2    	str	x2, [sp, #0x8]
10000274c: f85f83a0    	ldur	x0, [x29, #-0x8]
100002750: f90003e0    	str	x0, [sp]
100002754: f9400be1    	ldr	x1, [sp, #0x10]
100002758: f94007e2    	ldr	x2, [sp, #0x8]
10000275c: 94000021    	bl	0x1000027e0 <__ZNSt3__117__compressed_pairIPNS_15__thread_structENS_14default_deleteIS1_EEEC2B8ne180100IS2_S4_EEOT_OT0_>
100002760: f94003e0    	ldr	x0, [sp]
100002764: a9427bfd    	ldp	x29, x30, [sp, #0x20]
100002768: 9100c3ff    	add	sp, sp, #0x30
10000276c: d65f03c0    	ret

0000000100002770 <__ZNSt3__117__compressed_pairIPNS_15__thread_structENS_14default_deleteIS1_EEE5firstB8ne180100Ev>:
;   _LIBCPP_HIDE_FROM_ABI _LIBCPP_CONSTEXPR_SINCE_CXX14 typename _Base1::reference first() _NOEXCEPT {
100002770: d10083ff    	sub	sp, sp, #0x20
100002774: a9017bfd    	stp	x29, x30, [sp, #0x10]
100002778: 910043fd    	add	x29, sp, #0x10
10000277c: f90007e0    	str	x0, [sp, #0x8]
100002780: f94007e0    	ldr	x0, [sp, #0x8]
;     return static_cast<_Base1&>(*this).__get();
100002784: 94000004    	bl	0x100002794 <__ZNSt3__122__compressed_pair_elemIPNS_15__thread_structELi0ELb0EE5__getB8ne180100Ev>
100002788: a9417bfd    	ldp	x29, x30, [sp, #0x10]
10000278c: 910083ff    	add	sp, sp, #0x20
100002790: d65f03c0    	ret

0000000100002794 <__ZNSt3__122__compressed_pair_elemIPNS_15__thread_structELi0ELb0EE5__getB8ne180100Ev>:
;   _LIBCPP_HIDE_FROM_ABI _LIBCPP_CONSTEXPR_SINCE_CXX14 reference __get() _NOEXCEPT { return __value_; }
100002794: d10043ff    	sub	sp, sp, #0x10
100002798: f90007e0    	str	x0, [sp, #0x8]
10000279c: f94007e0    	ldr	x0, [sp, #0x8]
1000027a0: 910043ff    	add	sp, sp, #0x10
1000027a4: d65f03c0    	ret

00000001000027a8 <__ZNSt3__117__compressed_pairIPNS_15__thread_structENS_14default_deleteIS1_EEE6secondB8ne180100Ev>:
;   _LIBCPP_HIDE_FROM_ABI _LIBCPP_CONSTEXPR_SINCE_CXX14 typename _Base2::reference second() _NOEXCEPT {
1000027a8: d10083ff    	sub	sp, sp, #0x20
1000027ac: a9017bfd    	stp	x29, x30, [sp, #0x10]
1000027b0: 910043fd    	add	x29, sp, #0x10
1000027b4: f90007e0    	str	x0, [sp, #0x8]
1000027b8: f94007e0    	ldr	x0, [sp, #0x8]
;     return static_cast<_Base2&>(*this).__get();
1000027bc: 94000004    	bl	0x1000027cc <__ZNSt3__122__compressed_pair_elemINS_14default_deleteINS_15__thread_structEEELi1ELb1EE5__getB8ne180100Ev>
1000027c0: a9417bfd    	ldp	x29, x30, [sp, #0x10]
1000027c4: 910083ff    	add	sp, sp, #0x20
1000027c8: d65f03c0    	ret

00000001000027cc <__ZNSt3__122__compressed_pair_elemINS_14default_deleteINS_15__thread_structEEELi1ELb1EE5__getB8ne180100Ev>:
;   _LIBCPP_HIDE_FROM_ABI _LIBCPP_CONSTEXPR_SINCE_CXX14 reference __get() _NOEXCEPT { return *this; }
1000027cc: d10043ff    	sub	sp, sp, #0x10
1000027d0: f90007e0    	str	x0, [sp, #0x8]
1000027d4: f94007e0    	ldr	x0, [sp, #0x8]
1000027d8: 910043ff    	add	sp, sp, #0x10
1000027dc: d65f03c0    	ret

00000001000027e0 <__ZNSt3__117__compressed_pairIPNS_15__thread_structENS_14default_deleteIS1_EEEC2B8ne180100IS2_S4_EEOT_OT0_>:
;       : _Base1(std::forward<_U1>(__t1)), _Base2(std::forward<_U2>(__t2)) {}
1000027e0: d100c3ff    	sub	sp, sp, #0x30
1000027e4: a9027bfd    	stp	x29, x30, [sp, #0x20]
1000027e8: 910083fd    	add	x29, sp, #0x20
1000027ec: f81f83a0    	stur	x0, [x29, #-0x8]
1000027f0: f9000be1    	str	x1, [sp, #0x10]
1000027f4: f90007e2    	str	x2, [sp, #0x8]
1000027f8: f85f83a0    	ldur	x0, [x29, #-0x8]
1000027fc: f90003e0    	str	x0, [sp]
100002800: f9400be1    	ldr	x1, [sp, #0x10]
100002804: 94000008    	bl	0x100002824 <__ZNSt3__122__compressed_pair_elemIPNS_15__thread_structELi0ELb0EEC2B8ne180100IS2_vEEOT_>
100002808: f94003e0    	ldr	x0, [sp]
10000280c: f94007e1    	ldr	x1, [sp, #0x8]
100002810: 9400000e    	bl	0x100002848 <__ZNSt3__122__compressed_pair_elemINS_14default_deleteINS_15__thread_structEEELi1ELb1EEC2B8ne180100IS3_vEEOT_>
100002814: f94003e0    	ldr	x0, [sp]
100002818: a9427bfd    	ldp	x29, x30, [sp, #0x20]
10000281c: 9100c3ff    	add	sp, sp, #0x30
100002820: d65f03c0    	ret

0000000100002824 <__ZNSt3__122__compressed_pair_elemIPNS_15__thread_structELi0ELb0EEC2B8ne180100IS2_vEEOT_>:
;       : __value_(std::forward<_Up>(__u)) {}
100002824: d10043ff    	sub	sp, sp, #0x10
100002828: f90007e0    	str	x0, [sp, #0x8]
10000282c: f90003e1    	str	x1, [sp]
100002830: f94007e0    	ldr	x0, [sp, #0x8]
100002834: f94003e8    	ldr	x8, [sp]
100002838: f9400108    	ldr	x8, [x8]
10000283c: f9000008    	str	x8, [x0]
100002840: 910043ff    	add	sp, sp, #0x10
100002844: d65f03c0    	ret

0000000100002848 <__ZNSt3__122__compressed_pair_elemINS_14default_deleteINS_15__thread_structEEELi1ELb1EEC2B8ne180100IS3_vEEOT_>:
;       : __value_type(std::forward<_Up>(__u)) {}
100002848: d10043ff    	sub	sp, sp, #0x10
10000284c: f90007e0    	str	x0, [sp, #0x8]
100002850: f90003e1    	str	x1, [sp]
100002854: f94007e0    	ldr	x0, [sp, #0x8]
100002858: 910043ff    	add	sp, sp, #0x10
10000285c: d65f03c0    	ret

0000000100002860 <__ZNSt3__110unique_ptrINS_5tupleIJNS0_INS_15__thread_structENS_14default_deleteIS2_EEEEZ4mainE3$_0EEENS3_IS7_EEEC2B8ne180100ILb1EvEEPS7_>:
;       : __ptr_(__p, __value_init_tag()) {}
100002860: d100c3ff    	sub	sp, sp, #0x30
100002864: a9027bfd    	stp	x29, x30, [sp, #0x20]
100002868: 910083fd    	add	x29, sp, #0x20
10000286c: aa0103e8    	mov	x8, x1
100002870: f81f83a0    	stur	x0, [x29, #-0x8]
100002874: 910043e1    	add	x1, sp, #0x10
100002878: f9000be8    	str	x8, [sp, #0x10]
10000287c: f85f83a0    	ldur	x0, [x29, #-0x8]
100002880: f90003e0    	str	x0, [sp]
100002884: 91003fe2    	add	x2, sp, #0xf
100002888: 94000007    	bl	0x1000028a4 <__ZNSt3__117__compressed_pairIPNS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEEZ4mainE3$_0EEENS4_IS8_EEEC1B8ne180100IRS9_NS_16__value_init_tagEEEOT_OT0_>
10000288c: 14000001    	b	0x100002890 <__ZNSt3__110unique_ptrINS_5tupleIJNS0_INS_15__thread_structENS_14default_deleteIS2_EEEEZ4mainE3$_0EEENS3_IS7_EEEC2B8ne180100ILb1EvEEPS7_+0x30>
100002890: f94003e0    	ldr	x0, [sp]
;       : __ptr_(__p, __value_init_tag()) {}
100002894: a9427bfd    	ldp	x29, x30, [sp, #0x20]
100002898: 9100c3ff    	add	sp, sp, #0x30
10000289c: d65f03c0    	ret
1000028a0: 97fffc04    	bl	0x1000018b0 <___clang_call_terminate>

00000001000028a4 <__ZNSt3__117__compressed_pairIPNS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEEZ4mainE3$_0EEENS4_IS8_EEEC1B8ne180100IRS9_NS_16__value_init_tagEEEOT_OT0_>:
;       : _Base1(std::forward<_U1>(__t1)), _Base2(std::forward<_U2>(__t2)) {}
1000028a4: d100c3ff    	sub	sp, sp, #0x30
1000028a8: a9027bfd    	stp	x29, x30, [sp, #0x20]
1000028ac: 910083fd    	add	x29, sp, #0x20
1000028b0: f81f83a0    	stur	x0, [x29, #-0x8]
1000028b4: f9000be1    	str	x1, [sp, #0x10]
1000028b8: f90007e2    	str	x2, [sp, #0x8]
1000028bc: f85f83a0    	ldur	x0, [x29, #-0x8]
1000028c0: f90003e0    	str	x0, [sp]
1000028c4: f9400be1    	ldr	x1, [sp, #0x10]
1000028c8: f94007e2    	ldr	x2, [sp, #0x8]
1000028cc: 94000005    	bl	0x1000028e0 <__ZNSt3__117__compressed_pairIPNS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEEZ4mainE3$_0EEENS4_IS8_EEEC2B8ne180100IRS9_NS_16__value_init_tagEEEOT_OT0_>
1000028d0: f94003e0    	ldr	x0, [sp]
1000028d4: a9427bfd    	ldp	x29, x30, [sp, #0x20]
1000028d8: 9100c3ff    	add	sp, sp, #0x30
1000028dc: d65f03c0    	ret

00000001000028e0 <__ZNSt3__117__compressed_pairIPNS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEEZ4mainE3$_0EEENS4_IS8_EEEC2B8ne180100IRS9_NS_16__value_init_tagEEEOT_OT0_>:
1000028e0: d10103ff    	sub	sp, sp, #0x40
1000028e4: a9037bfd    	stp	x29, x30, [sp, #0x30]
1000028e8: 9100c3fd    	add	x29, sp, #0x30
1000028ec: f81f83a0    	stur	x0, [x29, #-0x8]
1000028f0: f81f03a1    	stur	x1, [x29, #-0x10]
1000028f4: f9000fe2    	str	x2, [sp, #0x18]
1000028f8: f85f83a0    	ldur	x0, [x29, #-0x8]
1000028fc: f90007e0    	str	x0, [sp, #0x8]
100002900: f85f03a1    	ldur	x1, [x29, #-0x10]
100002904: 94000007    	bl	0x100002920 <__ZNSt3__122__compressed_pair_elemIPNS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEEZ4mainE3$_0EEELi0ELb0EEC2B8ne180100IRS9_vEEOT_>
100002908: f94007e0    	ldr	x0, [sp, #0x8]
10000290c: 9400000e    	bl	0x100002944 <__ZNSt3__122__compressed_pair_elemINS_14default_deleteINS_5tupleIJNS_10unique_ptrINS_15__thread_structENS1_IS4_EEEEZ4mainE3$_0EEEEELi1ELb1EEC2B8ne180100ENS_16__value_init_tagE>
100002910: f94007e0    	ldr	x0, [sp, #0x8]
100002914: a9437bfd    	ldp	x29, x30, [sp, #0x30]
100002918: 910103ff    	add	sp, sp, #0x40
10000291c: d65f03c0    	ret

0000000100002920 <__ZNSt3__122__compressed_pair_elemIPNS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEEZ4mainE3$_0EEELi0ELb0EEC2B8ne180100IRS9_vEEOT_>:
;       : __value_(std::forward<_Up>(__u)) {}
100002920: d10043ff    	sub	sp, sp, #0x10
100002924: f90007e0    	str	x0, [sp, #0x8]
100002928: f90003e1    	str	x1, [sp]
10000292c: f94007e0    	ldr	x0, [sp, #0x8]
100002930: f94003e8    	ldr	x8, [sp]
100002934: f9400108    	ldr	x8, [x8]
100002938: f9000008    	str	x8, [x0]
10000293c: 910043ff    	add	sp, sp, #0x10
100002940: d65f03c0    	ret

0000000100002944 <__ZNSt3__122__compressed_pair_elemINS_14default_deleteINS_5tupleIJNS_10unique_ptrINS_15__thread_structENS1_IS4_EEEEZ4mainE3$_0EEEEELi1ELb1EEC2B8ne180100ENS_16__value_init_tagE>:
;   _LIBCPP_HIDE_FROM_ABI _LIBCPP_CONSTEXPR explicit __compressed_pair_elem(__value_init_tag) : __value_type() {}
100002944: d10043ff    	sub	sp, sp, #0x10
100002948: f90003e0    	str	x0, [sp]
10000294c: f94003e0    	ldr	x0, [sp]
100002950: 910043ff    	add	sp, sp, #0x10
100002954: d65f03c0    	ret

0000000100002958 <__ZNSt3__121__thread_specific_ptrINS_15__thread_structEE11set_pointerEPS1_>:
; void __thread_specific_ptr<_Tp>::set_pointer(pointer __p) {
100002958: d10083ff    	sub	sp, sp, #0x20
10000295c: a9017bfd    	stp	x29, x30, [sp, #0x10]
100002960: 910043fd    	add	x29, sp, #0x10
100002964: f90007e0    	str	x0, [sp, #0x8]
100002968: f90003e1    	str	x1, [sp]
10000296c: f94007e8    	ldr	x8, [sp, #0x8]
;   std::__libcpp_tls_set(__key_, __p);
100002970: f9400100    	ldr	x0, [x8]
100002974: f94003e1    	ldr	x1, [sp]
100002978: 94000017    	bl	0x1000029d4 <__ZNSt3__116__libcpp_tls_setB8ne180100EmPv>
; }
10000297c: a9417bfd    	ldp	x29, x30, [sp, #0x10]
100002980: 910083ff    	add	sp, sp, #0x20
100002984: d65f03c0    	ret

0000000100002988 <__ZNSt3__13getB8ne180100ILm0EJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS2_EEEEZ4mainE3$_0EEERNS_13tuple_elementIXT_ENS_5tupleIJDpT0_EEEE4typeERSB_>:
; get(tuple<_Tp...>& __t) _NOEXCEPT {
100002988: d10083ff    	sub	sp, sp, #0x20
10000298c: a9017bfd    	stp	x29, x30, [sp, #0x10]
100002990: 910043fd    	add	x29, sp, #0x10
100002994: f90007e0    	str	x0, [sp, #0x8]
;   return static_cast<__tuple_leaf<_Ip, type>&>(__t.__base_).get();
100002998: f94007e0    	ldr	x0, [sp, #0x8]
10000299c: 94000019    	bl	0x100002a00 <__ZNSt3__112__tuple_leafILm0ENS_10unique_ptrINS_15__thread_structENS_14default_deleteIS2_EEEELb0EE3getB8ne180100Ev>
1000029a0: a9417bfd    	ldp	x29, x30, [sp, #0x10]
1000029a4: 910083ff    	add	sp, sp, #0x20
1000029a8: d65f03c0    	ret

00000001000029ac <__ZNSt3__116__thread_executeB8ne180100INS_10unique_ptrINS_15__thread_structENS_14default_deleteIS2_EEEEZ4mainE3$_0JETpTnmJEEEvRNS_5tupleIJT_T0_DpT1_EEENS_15__tuple_indicesIJXspT2_EEEE>:
; inline _LIBCPP_HIDE_FROM_ABI void __thread_execute(tuple<_TSp, _Fp, _Args...>& __t, __tuple_indices<_Indices...>) {
1000029ac: d10083ff    	sub	sp, sp, #0x20
1000029b0: a9017bfd    	stp	x29, x30, [sp, #0x10]
1000029b4: 910043fd    	add	x29, sp, #0x10
1000029b8: f90003e0    	str	x0, [sp]
;   std::__invoke(std::move(std::get<1>(__t)), std::move(std::get<_Indices>(__t))...);
1000029bc: f94003e0    	ldr	x0, [sp]
1000029c0: 9400001e    	bl	0x100002a38 <__ZNSt3__13getB8ne180100ILm1EJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS2_EEEEZ4mainE3$_0EEERNS_13tuple_elementIXT_ENS_5tupleIJDpT0_EEEE4typeERSB_>
1000029c4: 94000014    	bl	0x100002a14 <__ZNSt3__18__invokeB8ne180100IZ4mainE3$_0JEEEDTclclsr3stdE7declvalIT_EEspclsr3stdE7declvalIT0_EEEEOS2_DpOS3_>
; }
1000029c8: a9417bfd    	ldp	x29, x30, [sp, #0x10]
1000029cc: 910083ff    	add	sp, sp, #0x20
1000029d0: d65f03c0    	ret

00000001000029d4 <__ZNSt3__116__libcpp_tls_setB8ne180100EmPv>:
; int __libcpp_tls_set(__libcpp_tls_key __key, void* __p) { return pthread_setspecific(__key, __p); }
1000029d4: d10083ff    	sub	sp, sp, #0x20
1000029d8: a9017bfd    	stp	x29, x30, [sp, #0x10]
1000029dc: 910043fd    	add	x29, sp, #0x10
1000029e0: f90007e0    	str	x0, [sp, #0x8]
1000029e4: f90003e1    	str	x1, [sp]
1000029e8: f94007e0    	ldr	x0, [sp, #0x8]
1000029ec: f94003e1    	ldr	x1, [sp]
1000029f0: 940004a0    	bl	0x100003c70 <_strlen+0x100003c70>
1000029f4: a9417bfd    	ldp	x29, x30, [sp, #0x10]
1000029f8: 910083ff    	add	sp, sp, #0x20
1000029fc: d65f03c0    	ret

0000000100002a00 <__ZNSt3__112__tuple_leafILm0ENS_10unique_ptrINS_15__thread_structENS_14default_deleteIS2_EEEELb0EE3getB8ne180100Ev>:
;   _LIBCPP_HIDE_FROM_ABI _LIBCPP_CONSTEXPR_SINCE_CXX14 _Hp& get() _NOEXCEPT { return __value_; }
100002a00: d10043ff    	sub	sp, sp, #0x10
100002a04: f90007e0    	str	x0, [sp, #0x8]
100002a08: f94007e0    	ldr	x0, [sp, #0x8]
100002a0c: 910043ff    	add	sp, sp, #0x10
100002a10: d65f03c0    	ret

0000000100002a14 <__ZNSt3__18__invokeB8ne180100IZ4mainE3$_0JEEEDTclclsr3stdE7declvalIT_EEspclsr3stdE7declvalIT0_EEEEOS2_DpOS3_>:
;                { return static_cast<_Fp&&>(__f)(static_cast<_Args&&>(__args)...); }
100002a14: d10083ff    	sub	sp, sp, #0x20
100002a18: a9017bfd    	stp	x29, x30, [sp, #0x10]
100002a1c: 910043fd    	add	x29, sp, #0x10
100002a20: f90007e0    	str	x0, [sp, #0x8]
100002a24: f94007e0    	ldr	x0, [sp, #0x8]
100002a28: 9400000e    	bl	0x100002a60 <__ZZ4mainENK3$_0clEv>
100002a2c: a9417bfd    	ldp	x29, x30, [sp, #0x10]
100002a30: 910083ff    	add	sp, sp, #0x20
100002a34: d65f03c0    	ret

0000000100002a38 <__ZNSt3__13getB8ne180100ILm1EJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS2_EEEEZ4mainE3$_0EEERNS_13tuple_elementIXT_ENS_5tupleIJDpT0_EEEE4typeERSB_>:
; get(tuple<_Tp...>& __t) _NOEXCEPT {
100002a38: d10083ff    	sub	sp, sp, #0x20
100002a3c: a9017bfd    	stp	x29, x30, [sp, #0x10]
100002a40: 910043fd    	add	x29, sp, #0x10
100002a44: f90007e0    	str	x0, [sp, #0x8]
;   return static_cast<__tuple_leaf<_Ip, type>&>(__t.__base_).get();
100002a48: f94007e8    	ldr	x8, [sp, #0x8]
100002a4c: 91002100    	add	x0, x8, #0x8
100002a50: 9400034a    	bl	0x100003778 <__ZNSt3__112__tuple_leafILm1EZ4mainE3$_0Lb0EE3getB8ne180100Ev>
100002a54: a9417bfd    	ldp	x29, x30, [sp, #0x10]
100002a58: 910083ff    	add	sp, sp, #0x20
100002a5c: d65f03c0    	ret

0000000100002a60 <__ZZ4mainENK3$_0clEv>:
;   auto producer = std::thread([&](){
100002a60: d100c3ff    	sub	sp, sp, #0x30
100002a64: a9027bfd    	stp	x29, x30, [sp, #0x20]
100002a68: 910083fd    	add	x29, sp, #0x20
100002a6c: f81f83a0    	stur	x0, [x29, #-0x8]
100002a70: f85f83a8    	ldur	x8, [x29, #-0x8]
100002a74: f90007e8    	str	x8, [sp, #0x8]
;     srand(0);
100002a78: 52800000    	mov	w0, #0x0                ; =0
100002a7c: 94000483    	bl	0x100003c88 <_strlen+0x100003c88>
;     while (true) {
100002a80: 14000001    	b	0x100002a84 <__ZZ4mainENK3$_0clEv+0x24>
;       auto value = rand();
100002a84: 9400047e    	bl	0x100003c7c <_strlen+0x100003c7c>
100002a88: f94007e8    	ldr	x8, [sp, #0x8]
100002a8c: d10033a1    	sub	x1, x29, #0xc
100002a90: b81f43a0    	stur	w0, [x29, #-0xc]
;       bool success = spmc.push(value);
100002a94: f9400100    	ldr	x0, [x8]
100002a98: 94000413    	bl	0x100003ae4 <_strlen+0x100003ae4>
100002a9c: 381f33a0    	sturb	w0, [x29, #-0xd]
;       if (success) {
100002aa0: 385f33a8    	ldurb	w8, [x29, #-0xd]
100002aa4: 360001a8    	tbz	w8, #0x0, 0x100002ad8 <__ZZ4mainENK3$_0clEv+0x78>
100002aa8: 14000001    	b	0x100002aac <__ZZ4mainENK3$_0clEv+0x4c>
;         std::cout << "pushed " << value << std::endl;
100002aac: d0000000    	adrp	x0, 0x100004000 <_strlen+0x100004000>
100002ab0: f9405000    	ldr	x0, [x0, #0xa0]
100002ab4: b0000001    	adrp	x1, 0x100003000 <__ZNSt3__116__pad_and_outputB8ne180100IcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_+0x10>
100002ab8: 91377821    	add	x1, x1, #0xdde
100002abc: 94000041    	bl	0x100002bc0 <__ZNSt3__1lsB8ne180100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc>
100002ac0: b85f43a1    	ldur	w1, [x29, #-0xc]
100002ac4: 9400042f    	bl	0x100003b80 <_strlen+0x100003b80>
100002ac8: 90000001    	adrp	x1, 0x100002000 <__ZNSt3__110unique_ptrIA_iNS_14default_deleteIS1_EEE7releaseB8ne180100Ev+0x2c>
100002acc: 9130d021    	add	x1, x1, #0xc34
100002ad0: 9400004e    	bl	0x100002c08 <__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsB8ne180100EPFRS3_S4_E>
;       }
100002ad4: 14000001    	b	0x100002ad8 <__ZZ4mainENK3$_0clEv+0x78>
;     while (true) {
100002ad8: 17ffffeb    	b	0x100002a84 <__ZZ4mainENK3$_0clEv+0x24>

0000000100002adc <__ZN4SPMCIiE4pushERKi>:
;   bool push(const T& value) {
100002adc: d10143ff    	sub	sp, sp, #0x50
100002ae0: a9047bfd    	stp	x29, x30, [sp, #0x40]
100002ae4: 910103fd    	add	x29, sp, #0x40
100002ae8: f81f03a0    	stur	x0, [x29, #-0x10]
100002aec: f81e83a1    	stur	x1, [x29, #-0x18]
100002af0: f85f03a8    	ldur	x8, [x29, #-0x10]
100002af4: f9000be8    	str	x8, [sp, #0x10]
;     u32 tail = _tail .load(std::memory_order_acquire);
100002af8: 91004100    	add	x0, x8, #0x10
100002afc: 52800041    	mov	w1, #0x2                ; =2
100002b00: b9001be1    	str	w1, [sp, #0x18]
100002b04: 94000062    	bl	0x100002c8c <__ZNKSt3__113__atomic_baseIjLb0EE4loadB8ne180100ENS_12memory_orderE>
100002b08: aa0003e8    	mov	x8, x0
100002b0c: f9400be0    	ldr	x0, [sp, #0x10]
100002b10: b81e43a8    	stur	w8, [x29, #-0x1c]
;     _buffer[tail] = value;
100002b14: f85e83a8    	ldur	x8, [x29, #-0x18]
100002b18: b9400108    	ldr	w8, [x8]
100002b1c: b9000fe8    	str	w8, [sp, #0xc]
100002b20: b85e43a8    	ldur	w8, [x29, #-0x1c]
100002b24: aa0803e1    	mov	x1, x8
100002b28: 94000064    	bl	0x100002cb8 <__ZNKSt3__110unique_ptrIA_iNS_14default_deleteIS1_EEEixB8ne180100Em>
100002b2c: b9400fe8    	ldr	w8, [sp, #0xc]
100002b30: aa0003e9    	mov	x9, x0
100002b34: f9400be0    	ldr	x0, [sp, #0x10]
100002b38: b9000128    	str	w8, [x9]
;     u32 new_tail = increment(tail);
100002b3c: b85e43a1    	ldur	w1, [x29, #-0x1c]
100002b40: 940003ec    	bl	0x100003af0 <_strlen+0x100003af0>
100002b44: f9400be8    	ldr	x8, [sp, #0x10]
100002b48: b9401be1    	ldr	w1, [sp, #0x18]
100002b4c: b90023e0    	str	w0, [sp, #0x20]
;     if (new_tail == _head.load(std::memory_order_acquire)) {
100002b50: b94023e9    	ldr	w9, [sp, #0x20]
100002b54: b9001fe9    	str	w9, [sp, #0x1c]
100002b58: 91003100    	add	x0, x8, #0xc
100002b5c: 9400004c    	bl	0x100002c8c <__ZNKSt3__113__atomic_baseIjLb0EE4loadB8ne180100ENS_12memory_orderE>
100002b60: b9401fe8    	ldr	w8, [sp, #0x1c]
100002b64: 6b000108    	subs	w8, w8, w0
100002b68: 540000e1    	b.ne	0x100002b84 <__ZN4SPMCIiE4pushERKi+0xa8>
100002b6c: 14000001    	b	0x100002b70 <__ZN4SPMCIiE4pushERKi+0x94>
100002b70: 52800008    	mov	w8, #0x0                ; =0
;       return false;
100002b74: 12000108    	and	w8, w8, #0x1
100002b78: 12000108    	and	w8, w8, #0x1
100002b7c: 381ff3a8    	sturb	w8, [x29, #-0x1]
100002b80: 1400000b    	b	0x100002bac <__ZN4SPMCIiE4pushERKi+0xd0>
100002b84: f9400be8    	ldr	x8, [sp, #0x10]
;     _tail.store(new_tail, std::memory_order_release);
100002b88: 91004100    	add	x0, x8, #0x10
100002b8c: b94023e1    	ldr	w1, [sp, #0x20]
100002b90: 52800062    	mov	w2, #0x3                ; =3
100002b94: 97fffc25    	bl	0x100001c28 <__ZNSt3__113__atomic_baseIjLb0EE5storeB8ne180100EjNS_12memory_orderE>
100002b98: 52800028    	mov	w8, #0x1                ; =1
;     return true;
100002b9c: 12000108    	and	w8, w8, #0x1
100002ba0: 12000108    	and	w8, w8, #0x1
100002ba4: 381ff3a8    	sturb	w8, [x29, #-0x1]
100002ba8: 14000001    	b	0x100002bac <__ZN4SPMCIiE4pushERKi+0xd0>
;   }
100002bac: 385ff3a8    	ldurb	w8, [x29, #-0x1]
100002bb0: 12000100    	and	w0, w8, #0x1
100002bb4: a9447bfd    	ldp	x29, x30, [sp, #0x40]
100002bb8: 910143ff    	add	sp, sp, #0x50
100002bbc: d65f03c0    	ret

0000000100002bc0 <__ZNSt3__1lsB8ne180100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc>:
; _LIBCPP_HIDE_FROM_ABI basic_ostream<char, _Traits>& operator<<(basic_ostream<char, _Traits>& __os, const char* __str) {
100002bc0: d100c3ff    	sub	sp, sp, #0x30
100002bc4: a9027bfd    	stp	x29, x30, [sp, #0x20]
100002bc8: 910083fd    	add	x29, sp, #0x20
100002bcc: f81f83a0    	stur	x0, [x29, #-0x8]
100002bd0: f9000be1    	str	x1, [sp, #0x10]
;   return std::__put_character_sequence(__os, __str, _Traits::length(__str));
100002bd4: f85f83a8    	ldur	x8, [x29, #-0x8]
100002bd8: f90007e8    	str	x8, [sp, #0x8]
100002bdc: f9400be8    	ldr	x8, [sp, #0x10]
100002be0: f90003e8    	str	x8, [sp]
100002be4: f9400be0    	ldr	x0, [sp, #0x10]
100002be8: 97fffaed    	bl	0x10000179c <__ZNSt3__111char_traitsIcE6lengthB8ne180100EPKc>
100002bec: f94003e1    	ldr	x1, [sp]
100002bf0: aa0003e2    	mov	x2, x0
100002bf4: f94007e0    	ldr	x0, [sp, #0x8]
100002bf8: 9400007d    	bl	0x100002dec <__ZNSt3__124__put_character_sequenceB8ne180100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m>
100002bfc: a9427bfd    	ldp	x29, x30, [sp, #0x20]
100002c00: 9100c3ff    	add	sp, sp, #0x30
100002c04: d65f03c0    	ret

0000000100002c08 <__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsB8ne180100EPFRS3_S4_E>:
;   inline _LIBCPP_HIDE_FROM_ABI_AFTER_V1 basic_ostream& operator<<(basic_ostream& (*__pf)(basic_ostream&)) {
100002c08: d10083ff    	sub	sp, sp, #0x20
100002c0c: a9017bfd    	stp	x29, x30, [sp, #0x10]
100002c10: 910043fd    	add	x29, sp, #0x10
100002c14: f90007e0    	str	x0, [sp, #0x8]
100002c18: f90003e1    	str	x1, [sp]
100002c1c: f94007e0    	ldr	x0, [sp, #0x8]
;     return __pf(*this);
100002c20: f94003e8    	ldr	x8, [sp]
100002c24: d63f0100    	blr	x8
100002c28: a9417bfd    	ldp	x29, x30, [sp, #0x10]
100002c2c: 910083ff    	add	sp, sp, #0x20
100002c30: d65f03c0    	ret

0000000100002c34 <__ZNSt3__14endlB8ne180100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_>:
; _LIBCPP_HIDE_FROM_ABI inline basic_ostream<_CharT, _Traits>& endl(basic_ostream<_CharT, _Traits>& __os) {
100002c34: d10083ff    	sub	sp, sp, #0x20
100002c38: a9017bfd    	stp	x29, x30, [sp, #0x10]
100002c3c: 910043fd    	add	x29, sp, #0x10
100002c40: f90007e0    	str	x0, [sp, #0x8]
;   __os.put(__os.widen('\n'));
100002c44: f94007e8    	ldr	x8, [sp, #0x8]
100002c48: f90003e8    	str	x8, [sp]
100002c4c: f94007e8    	ldr	x8, [sp, #0x8]
100002c50: f9400109    	ldr	x9, [x8]
100002c54: f85e8129    	ldur	x9, [x9, #-0x18]
100002c58: 8b090100    	add	x0, x8, x9
100002c5c: 52800141    	mov	w1, #0xa                ; =10
100002c60: 9400027f    	bl	0x10000365c <__ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5widenB8ne180100Ec>
100002c64: aa0003e8    	mov	x8, x0
100002c68: f94003e0    	ldr	x0, [sp]
100002c6c: 13001d01    	sxtb	w1, w8
100002c70: 940003b8    	bl	0x100003b50 <_strlen+0x100003b50>
;   __os.flush();
100002c74: f94007e0    	ldr	x0, [sp, #0x8]
100002c78: 940003b9    	bl	0x100003b5c <_strlen+0x100003b5c>
;   return __os;
100002c7c: f94007e0    	ldr	x0, [sp, #0x8]
100002c80: a9417bfd    	ldp	x29, x30, [sp, #0x10]
100002c84: 910083ff    	add	sp, sp, #0x20
100002c88: d65f03c0    	ret

0000000100002c8c <__ZNKSt3__113__atomic_baseIjLb0EE4loadB8ne180100ENS_12memory_orderE>:
;       _LIBCPP_CHECK_LOAD_MEMORY_ORDER(__m) {
100002c8c: d10083ff    	sub	sp, sp, #0x20
100002c90: a9017bfd    	stp	x29, x30, [sp, #0x10]
100002c94: 910043fd    	add	x29, sp, #0x10
100002c98: f90007e0    	str	x0, [sp, #0x8]
100002c9c: b90007e1    	str	w1, [sp, #0x4]
100002ca0: f94007e0    	ldr	x0, [sp, #0x8]
;     return std::__cxx_atomic_load(std::addressof(__a_), __m);
100002ca4: b94007e1    	ldr	w1, [sp, #0x4]
100002ca8: 94000025    	bl	0x100002d3c <__ZNSt3__117__cxx_atomic_loadB8ne180100IjEET_PKNS_22__cxx_atomic_base_implIS1_EENS_12memory_orderE>
100002cac: a9417bfd    	ldp	x29, x30, [sp, #0x10]
100002cb0: 910083ff    	add	sp, sp, #0x20
100002cb4: d65f03c0    	ret

0000000100002cb8 <__ZNKSt3__110unique_ptrIA_iNS_14default_deleteIS1_EEEixB8ne180100Em>:
;   _LIBCPP_HIDE_FROM_ABI _LIBCPP_CONSTEXPR_SINCE_CXX23 __add_lvalue_reference_t<_Tp> operator[](size_t __i) const {
100002cb8: d10083ff    	sub	sp, sp, #0x20
100002cbc: a9017bfd    	stp	x29, x30, [sp, #0x10]
100002cc0: 910043fd    	add	x29, sp, #0x10
100002cc4: f90007e0    	str	x0, [sp, #0x8]
100002cc8: f90003e1    	str	x1, [sp]
100002ccc: f94007e0    	ldr	x0, [sp, #0x8]
;     return __ptr_.first()[__i];
100002cd0: 94000039    	bl	0x100002db4 <__ZNKSt3__117__compressed_pairIPiNS_14default_deleteIA_iEEE5firstB8ne180100Ev>
100002cd4: f9400008    	ldr	x8, [x0]
100002cd8: f94003e9    	ldr	x9, [sp]
100002cdc: 8b090900    	add	x0, x8, x9, lsl #2
100002ce0: a9417bfd    	ldp	x29, x30, [sp, #0x10]
100002ce4: 910083ff    	add	sp, sp, #0x20
100002ce8: d65f03c0    	ret

0000000100002cec <__ZN4SPMCIiE9incrementEj>:
;   inline u32 increment(u32 n) {
100002cec: d10043ff    	sub	sp, sp, #0x10
100002cf0: f90007e0    	str	x0, [sp, #0x8]
100002cf4: b90007e1    	str	w1, [sp, #0x4]
100002cf8: f94007e9    	ldr	x9, [sp, #0x8]
;     return (n + 1 == _size) ? 0: n + 1;
100002cfc: b94007e8    	ldr	w8, [sp, #0x4]
100002d00: 11000508    	add	w8, w8, #0x1
100002d04: b9400929    	ldr	w9, [x9, #0x8]
100002d08: 6b090108    	subs	w8, w8, w9
100002d0c: 540000a1    	b.ne	0x100002d20 <__ZN4SPMCIiE9incrementEj+0x34>
100002d10: 14000001    	b	0x100002d14 <__ZN4SPMCIiE9incrementEj+0x28>
100002d14: 52800008    	mov	w8, #0x0                ; =0
100002d18: b90003e8    	str	w8, [sp]
;     return (n + 1 == _size) ? 0: n + 1;
100002d1c: 14000005    	b	0x100002d30 <__ZN4SPMCIiE9incrementEj+0x44>
100002d20: b94007e8    	ldr	w8, [sp, #0x4]
100002d24: 11000508    	add	w8, w8, #0x1
100002d28: b90003e8    	str	w8, [sp]
100002d2c: 14000001    	b	0x100002d30 <__ZN4SPMCIiE9incrementEj+0x44>
100002d30: b94003e0    	ldr	w0, [sp]
;     return (n + 1 == _size) ? 0: n + 1;
100002d34: 910043ff    	add	sp, sp, #0x10
100002d38: d65f03c0    	ret

0000000100002d3c <__ZNSt3__117__cxx_atomic_loadB8ne180100IjEET_PKNS_22__cxx_atomic_base_implIS1_EENS_12memory_orderE>:
; _LIBCPP_HIDE_FROM_ABI _Tp __cxx_atomic_load(__cxx_atomic_base_impl<_Tp> const* __a, memory_order __order) _NOEXCEPT {
100002d3c: d10083ff    	sub	sp, sp, #0x20
100002d40: f9000fe0    	str	x0, [sp, #0x18]
100002d44: b90017e1    	str	w1, [sp, #0x14]
;       const_cast<__ptr_type>(std::addressof(__a->__a_value)), static_cast<__memory_order_underlying_t>(__order));
100002d48: f9400fe8    	ldr	x8, [sp, #0x18]
100002d4c: f90003e8    	str	x8, [sp]
100002d50: b94017e8    	ldr	w8, [sp, #0x14]
100002d54: b9000fe8    	str	w8, [sp, #0xc]
;   return __c11_atomic_load(
100002d58: 71000508    	subs	w8, w8, #0x1
100002d5c: 71000508    	subs	w8, w8, #0x1
100002d60: 54000149    	b.ls	0x100002d88 <__ZNSt3__117__cxx_atomic_loadB8ne180100IjEET_PKNS_22__cxx_atomic_base_implIS1_EENS_12memory_orderE+0x4c>
100002d64: 14000001    	b	0x100002d68 <__ZNSt3__117__cxx_atomic_loadB8ne180100IjEET_PKNS_22__cxx_atomic_base_implIS1_EENS_12memory_orderE+0x2c>
100002d68: b9400fe8    	ldr	w8, [sp, #0xc]
;   return __c11_atomic_load(
100002d6c: 71001508    	subs	w8, w8, #0x5
100002d70: 54000140    	b.eq	0x100002d98 <__ZNSt3__117__cxx_atomic_loadB8ne180100IjEET_PKNS_22__cxx_atomic_base_implIS1_EENS_12memory_orderE+0x5c>
100002d74: 14000001    	b	0x100002d78 <__ZNSt3__117__cxx_atomic_loadB8ne180100IjEET_PKNS_22__cxx_atomic_base_implIS1_EENS_12memory_orderE+0x3c>
100002d78: f94003e8    	ldr	x8, [sp]
;   return __c11_atomic_load(
100002d7c: b9400108    	ldr	w8, [x8]
100002d80: b90013e8    	str	w8, [sp, #0x10]
100002d84: 14000009    	b	0x100002da8 <__ZNSt3__117__cxx_atomic_loadB8ne180100IjEET_PKNS_22__cxx_atomic_base_implIS1_EENS_12memory_orderE+0x6c>
100002d88: f94003e8    	ldr	x8, [sp]
;   return __c11_atomic_load(
100002d8c: b8bfc108    	ldapr	w8, [x8]
100002d90: b90013e8    	str	w8, [sp, #0x10]
100002d94: 14000005    	b	0x100002da8 <__ZNSt3__117__cxx_atomic_loadB8ne180100IjEET_PKNS_22__cxx_atomic_base_implIS1_EENS_12memory_orderE+0x6c>
100002d98: f94003e8    	ldr	x8, [sp]
;   return __c11_atomic_load(
100002d9c: 88dffd08    	ldar	w8, [x8]
100002da0: b90013e8    	str	w8, [sp, #0x10]
100002da4: 14000001    	b	0x100002da8 <__ZNSt3__117__cxx_atomic_loadB8ne180100IjEET_PKNS_22__cxx_atomic_base_implIS1_EENS_12memory_orderE+0x6c>
100002da8: b94013e0    	ldr	w0, [sp, #0x10]
100002dac: 910083ff    	add	sp, sp, #0x20
100002db0: d65f03c0    	ret

0000000100002db4 <__ZNKSt3__117__compressed_pairIPiNS_14default_deleteIA_iEEE5firstB8ne180100Ev>:
;   _LIBCPP_HIDE_FROM_ABI _LIBCPP_CONSTEXPR typename _Base1::const_reference first() const _NOEXCEPT {
100002db4: d10083ff    	sub	sp, sp, #0x20
100002db8: a9017bfd    	stp	x29, x30, [sp, #0x10]
100002dbc: 910043fd    	add	x29, sp, #0x10
100002dc0: f90007e0    	str	x0, [sp, #0x8]
100002dc4: f94007e0    	ldr	x0, [sp, #0x8]
;     return static_cast<_Base1 const&>(*this).__get();
100002dc8: 94000004    	bl	0x100002dd8 <__ZNKSt3__122__compressed_pair_elemIPiLi0ELb0EE5__getB8ne180100Ev>
100002dcc: a9417bfd    	ldp	x29, x30, [sp, #0x10]
100002dd0: 910083ff    	add	sp, sp, #0x20
100002dd4: d65f03c0    	ret

0000000100002dd8 <__ZNKSt3__122__compressed_pair_elemIPiLi0ELb0EE5__getB8ne180100Ev>:
;   _LIBCPP_HIDE_FROM_ABI _LIBCPP_CONSTEXPR const_reference __get() const _NOEXCEPT { return __value_; }
100002dd8: d10043ff    	sub	sp, sp, #0x10
100002ddc: f90007e0    	str	x0, [sp, #0x8]
100002de0: f94007e0    	ldr	x0, [sp, #0x8]
100002de4: 910043ff    	add	sp, sp, #0x10
100002de8: d65f03c0    	ret

0000000100002dec <__ZNSt3__124__put_character_sequenceB8ne180100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m>:
; __put_character_sequence(basic_ostream<_CharT, _Traits>& __os, const _CharT* __str, size_t __len) {
100002dec: d10283ff    	sub	sp, sp, #0xa0
100002df0: a9097bfd    	stp	x29, x30, [sp, #0x90]
100002df4: 910243fd    	add	x29, sp, #0x90
100002df8: f81f83a0    	stur	x0, [x29, #-0x8]
100002dfc: f81f03a1    	stur	x1, [x29, #-0x10]
100002e00: f81e83a2    	stur	x2, [x29, #-0x18]
;     typename basic_ostream<_CharT, _Traits>::sentry __s(__os);
100002e04: f85f83a1    	ldur	x1, [x29, #-0x8]
100002e08: d100a3a0    	sub	x0, x29, #0x28
100002e0c: 94000357    	bl	0x100003b68 <_strlen+0x100003b68>
100002e10: 14000001    	b	0x100002e14 <__ZNSt3__124__put_character_sequenceB8ne180100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m+0x28>
;     if (__s) {
100002e14: d100a3a0    	sub	x0, x29, #0x28
100002e18: 9400006f    	bl	0x100002fd4 <__ZNKSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentrycvbB8ne180100Ev>
100002e1c: b90047e0    	str	w0, [sp, #0x44]
100002e20: 14000001    	b	0x100002e24 <__ZNSt3__124__put_character_sequenceB8ne180100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m+0x38>
100002e24: b94047e8    	ldr	w8, [sp, #0x44]
;     if (__s) {
100002e28: 36000be8    	tbz	w8, #0x0, 0x100002fa4 <__ZNSt3__124__put_character_sequenceB8ne180100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m+0x1b8>
100002e2c: 14000001    	b	0x100002e30 <__ZNSt3__124__put_character_sequenceB8ne180100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m+0x44>
;               _Ip(__os),
100002e30: f85f83a1    	ldur	x1, [x29, #-0x8]
100002e34: 910123e0    	add	x0, sp, #0x48
100002e38: 940000f3    	bl	0x100003204 <__ZNSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEEC1B8ne180100ERNS_13basic_ostreamIcS2_EE>
;               __str,
100002e3c: f85f03a8    	ldur	x8, [x29, #-0x10]
100002e40: f9001fe8    	str	x8, [sp, #0x38]
;               (__os.flags() & ios_base::adjustfield) == ios_base::left ? __str + __len : __str,
100002e44: f85f83a8    	ldur	x8, [x29, #-0x8]
100002e48: f9400109    	ldr	x9, [x8]
100002e4c: f85e8129    	ldur	x9, [x9, #-0x18]
100002e50: 8b090100    	add	x0, x8, x9
100002e54: 940000f9    	bl	0x100003238 <__ZNKSt3__18ios_base5flagsB8ne180100Ev>
100002e58: b90043e0    	str	w0, [sp, #0x40]
100002e5c: 14000001    	b	0x100002e60 <__ZNSt3__124__put_character_sequenceB8ne180100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m+0x74>
100002e60: b94043e8    	ldr	w8, [sp, #0x40]
;               (__os.flags() & ios_base::adjustfield) == ios_base::left ? __str + __len : __str,
100002e64: 52801609    	mov	w9, #0xb0               ; =176
100002e68: 0a090108    	and	w8, w8, w9
100002e6c: 71008108    	subs	w8, w8, #0x20
100002e70: 540000e1    	b.ne	0x100002e8c <__ZNSt3__124__put_character_sequenceB8ne180100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m+0xa0>
100002e74: 14000001    	b	0x100002e78 <__ZNSt3__124__put_character_sequenceB8ne180100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m+0x8c>
100002e78: f85f03a8    	ldur	x8, [x29, #-0x10]
100002e7c: f85e83a9    	ldur	x9, [x29, #-0x18]
100002e80: 8b090108    	add	x8, x8, x9
100002e84: f9001be8    	str	x8, [sp, #0x30]
100002e88: 14000004    	b	0x100002e98 <__ZNSt3__124__put_character_sequenceB8ne180100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m+0xac>
100002e8c: f85f03a8    	ldur	x8, [x29, #-0x10]
100002e90: f9001be8    	str	x8, [sp, #0x30]
100002e94: 14000001    	b	0x100002e98 <__ZNSt3__124__put_character_sequenceB8ne180100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m+0xac>
100002e98: f9401be8    	ldr	x8, [sp, #0x30]
100002e9c: f9000be8    	str	x8, [sp, #0x10]
;               __str + __len,
100002ea0: f85f03a8    	ldur	x8, [x29, #-0x10]
100002ea4: f85e83a9    	ldur	x9, [x29, #-0x18]
100002ea8: 8b090108    	add	x8, x8, x9
100002eac: f9000fe8    	str	x8, [sp, #0x18]
;               __os,
100002eb0: f85f83a8    	ldur	x8, [x29, #-0x8]
100002eb4: f9400109    	ldr	x9, [x8]
100002eb8: f85e8129    	ldur	x9, [x9, #-0x18]
100002ebc: 8b090108    	add	x8, x8, x9
100002ec0: f90013e8    	str	x8, [sp, #0x20]
;               __os.fill())
100002ec4: f85f83a8    	ldur	x8, [x29, #-0x8]
100002ec8: f9400109    	ldr	x9, [x8]
100002ecc: f85e8129    	ldur	x9, [x9, #-0x18]
100002ed0: 8b090100    	add	x0, x8, x9
100002ed4: 940000df    	bl	0x100003250 <__ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE4fillB8ne180100Ev>
100002ed8: b9002fe0    	str	w0, [sp, #0x2c]
100002edc: 14000001    	b	0x100002ee0 <__ZNSt3__124__put_character_sequenceB8ne180100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m+0xf4>
100002ee0: b9402fe8    	ldr	w8, [sp, #0x2c]
100002ee4: f94013e4    	ldr	x4, [sp, #0x20]
100002ee8: f9400fe3    	ldr	x3, [sp, #0x18]
100002eec: f9400be2    	ldr	x2, [sp, #0x10]
100002ef0: f9401fe1    	ldr	x1, [sp, #0x38]
;       if (std::__pad_and_output(
100002ef4: f94027e0    	ldr	x0, [sp, #0x48]
100002ef8: 13001d05    	sxtb	w5, w8
100002efc: 9400003d    	bl	0x100002ff0 <__ZNSt3__116__pad_and_outputB8ne180100IcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_>
100002f00: f90007e0    	str	x0, [sp, #0x8]
100002f04: 14000001    	b	0x100002f08 <__ZNSt3__124__put_character_sequenceB8ne180100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m+0x11c>
100002f08: f94007e8    	ldr	x8, [sp, #0x8]
100002f0c: d10103a0    	sub	x0, x29, #0x40
;       if (std::__pad_and_output(
100002f10: f81c03a8    	stur	x8, [x29, #-0x40]
;               .failed())
100002f14: 940000e8    	bl	0x1000032b4 <__ZNKSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEE6failedB8ne180100Ev>
;       if (std::__pad_and_output(
100002f18: 36000440    	tbz	w0, #0x0, 0x100002fa0 <__ZNSt3__124__put_character_sequenceB8ne180100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m+0x1b4>
100002f1c: 14000001    	b	0x100002f20 <__ZNSt3__124__put_character_sequenceB8ne180100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m+0x134>
;         __os.setstate(ios_base::badbit | ios_base::failbit);
100002f20: f85f83a8    	ldur	x8, [x29, #-0x8]
100002f24: f9400109    	ldr	x9, [x8]
100002f28: f85e8129    	ldur	x9, [x9, #-0x18]
100002f2c: 8b090100    	add	x0, x8, x9
100002f30: 528000a1    	mov	w1, #0x5                ; =5
100002f34: 940000e8    	bl	0x1000032d4 <__ZNSt3__19basic_iosIcNS_11char_traitsIcEEE8setstateB8ne180100Ej>
100002f38: 14000001    	b	0x100002f3c <__ZNSt3__124__put_character_sequenceB8ne180100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m+0x150>
100002f3c: 14000019    	b	0x100002fa0 <__ZNSt3__124__put_character_sequenceB8ne180100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m+0x1b4>
; }
100002f40: f81d03a0    	stur	x0, [x29, #-0x30]
100002f44: aa0103e8    	mov	x8, x1
100002f48: b81cc3a8    	stur	w8, [x29, #-0x34]
100002f4c: 14000007    	b	0x100002f68 <__ZNSt3__124__put_character_sequenceB8ne180100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m+0x17c>
100002f50: f81d03a0    	stur	x0, [x29, #-0x30]
100002f54: aa0103e8    	mov	x8, x1
100002f58: b81cc3a8    	stur	w8, [x29, #-0x34]
;   } catch (...) {
100002f5c: d100a3a0    	sub	x0, x29, #0x28
100002f60: 94000305    	bl	0x100003b74 <_strlen+0x100003b74>
100002f64: 14000001    	b	0x100002f68 <__ZNSt3__124__put_character_sequenceB8ne180100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m+0x17c>
100002f68: f85d03a0    	ldur	x0, [x29, #-0x30]
100002f6c: 94000335    	bl	0x100003c40 <_strlen+0x100003c40>
;     __os.__set_badbit_and_consider_rethrow();
100002f70: f85f83a8    	ldur	x8, [x29, #-0x8]
100002f74: f9400109    	ldr	x9, [x8]
100002f78: f85e8129    	ldur	x9, [x9, #-0x18]
100002f7c: 8b090100    	add	x0, x8, x9
100002f80: 9400031b    	bl	0x100003bec <_strlen+0x100003bec>
100002f84: 14000001    	b	0x100002f88 <__ZNSt3__124__put_character_sequenceB8ne180100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m+0x19c>
;   }
100002f88: 94000331    	bl	0x100003c4c <_strlen+0x100003c4c>
100002f8c: 14000001    	b	0x100002f90 <__ZNSt3__124__put_character_sequenceB8ne180100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m+0x1a4>
;   return __os;
100002f90: f85f83a0    	ldur	x0, [x29, #-0x8]
100002f94: a9497bfd    	ldp	x29, x30, [sp, #0x90]
100002f98: 910283ff    	add	sp, sp, #0xa0
100002f9c: d65f03c0    	ret
;     }
100002fa0: 14000001    	b	0x100002fa4 <__ZNSt3__124__put_character_sequenceB8ne180100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m+0x1b8>
;   } catch (...) {
100002fa4: d100a3a0    	sub	x0, x29, #0x28
100002fa8: 940002f3    	bl	0x100003b74 <_strlen+0x100003b74>
100002fac: 17fffff9    	b	0x100002f90 <__ZNSt3__124__put_character_sequenceB8ne180100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m+0x1a4>
; }
100002fb0: f81d03a0    	stur	x0, [x29, #-0x30]
100002fb4: aa0103e8    	mov	x8, x1
100002fb8: b81cc3a8    	stur	w8, [x29, #-0x34]
;   }
100002fbc: 94000324    	bl	0x100003c4c <_strlen+0x100003c4c>
100002fc0: 14000001    	b	0x100002fc4 <__ZNSt3__124__put_character_sequenceB8ne180100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m+0x1d8>
100002fc4: 14000001    	b	0x100002fc8 <__ZNSt3__124__put_character_sequenceB8ne180100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m+0x1dc>
100002fc8: f85d03a0    	ldur	x0, [x29, #-0x30]
100002fcc: 940002c3    	bl	0x100003ad8 <_strlen+0x100003ad8>
100002fd0: 97fffa38    	bl	0x1000018b0 <___clang_call_terminate>

0000000100002fd4 <__ZNKSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentrycvbB8ne180100Ev>:
;   _LIBCPP_HIDE_FROM_ABI explicit operator bool() const { return __ok_; }
100002fd4: d10043ff    	sub	sp, sp, #0x10
100002fd8: f90007e0    	str	x0, [sp, #0x8]
100002fdc: f94007e8    	ldr	x8, [sp, #0x8]
100002fe0: 39400108    	ldrb	w8, [x8]
100002fe4: 12000100    	and	w0, w8, #0x1
100002fe8: 910043ff    	add	sp, sp, #0x10
100002fec: d65f03c0    	ret

0000000100002ff0 <__ZNSt3__116__pad_and_outputB8ne180100IcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_>:
;     _CharT __fl) {
100002ff0: d10283ff    	sub	sp, sp, #0xa0
100002ff4: a9097bfd    	stp	x29, x30, [sp, #0x90]
100002ff8: 910243fd    	add	x29, sp, #0x90
100002ffc: f81f03a0    	stur	x0, [x29, #-0x10]
100003000: f81e83a1    	stur	x1, [x29, #-0x18]
100003004: f81e03a2    	stur	x2, [x29, #-0x20]
100003008: f81d83a3    	stur	x3, [x29, #-0x28]
10000300c: f81d03a4    	stur	x4, [x29, #-0x30]
100003010: 381cf3a5    	sturb	w5, [x29, #-0x31]
;   if (__s.__sbuf_ == nullptr)
100003014: f85f03a8    	ldur	x8, [x29, #-0x10]
100003018: b50000a8    	cbnz	x8, 0x10000302c <__ZNSt3__116__pad_and_outputB8ne180100IcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_+0x3c>
10000301c: 14000001    	b	0x100003020 <__ZNSt3__116__pad_and_outputB8ne180100IcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_+0x30>
;     return __s;
100003020: f85f03a8    	ldur	x8, [x29, #-0x10]
100003024: f81f83a8    	stur	x8, [x29, #-0x8]
100003028: 14000071    	b	0x1000031ec <__ZNSt3__116__pad_and_outputB8ne180100IcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_+0x1fc>
;   streamsize __sz = __oe - __ob;
10000302c: f85d83a8    	ldur	x8, [x29, #-0x28]
100003030: f85e83a9    	ldur	x9, [x29, #-0x18]
100003034: eb090108    	subs	x8, x8, x9
100003038: f81c03a8    	stur	x8, [x29, #-0x40]
;   streamsize __ns = __iob.width();
10000303c: f85d03a0    	ldur	x0, [x29, #-0x30]
100003040: 940000b0    	bl	0x100003300 <__ZNKSt3__18ios_base5widthB8ne180100Ev>
100003044: f90027e0    	str	x0, [sp, #0x48]
;   if (__ns > __sz)
100003048: f94027e8    	ldr	x8, [sp, #0x48]
10000304c: f85c03a9    	ldur	x9, [x29, #-0x40]
100003050: eb090108    	subs	x8, x8, x9
100003054: 540000ed    	b.le	0x100003070 <__ZNSt3__116__pad_and_outputB8ne180100IcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_+0x80>
100003058: 14000001    	b	0x10000305c <__ZNSt3__116__pad_and_outputB8ne180100IcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_+0x6c>
;     __ns -= __sz;
10000305c: f85c03a9    	ldur	x9, [x29, #-0x40]
100003060: f94027e8    	ldr	x8, [sp, #0x48]
100003064: eb090108    	subs	x8, x8, x9
100003068: f90027e8    	str	x8, [sp, #0x48]
10000306c: 14000003    	b	0x100003078 <__ZNSt3__116__pad_and_outputB8ne180100IcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_+0x88>
;     __ns = 0;
100003070: f90027ff    	str	xzr, [sp, #0x48]
100003074: 14000001    	b	0x100003078 <__ZNSt3__116__pad_and_outputB8ne180100IcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_+0x88>
;   streamsize __np = __op - __ob;
100003078: f85e03a8    	ldur	x8, [x29, #-0x20]
10000307c: f85e83a9    	ldur	x9, [x29, #-0x18]
100003080: eb090108    	subs	x8, x8, x9
100003084: f90023e8    	str	x8, [sp, #0x40]
;   if (__np > 0) {
100003088: f94023e8    	ldr	x8, [sp, #0x40]
10000308c: f1000108    	subs	x8, x8, #0x0
100003090: 540001ed    	b.le	0x1000030cc <__ZNSt3__116__pad_and_outputB8ne180100IcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_+0xdc>
100003094: 14000001    	b	0x100003098 <__ZNSt3__116__pad_and_outputB8ne180100IcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_+0xa8>
;     if (__s.__sbuf_->sputn(__ob, __np) != __np) {
100003098: f85f03a0    	ldur	x0, [x29, #-0x10]
10000309c: f85e83a1    	ldur	x1, [x29, #-0x18]
1000030a0: f94023e2    	ldr	x2, [sp, #0x40]
1000030a4: 9400009d    	bl	0x100003318 <__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5sputnB8ne180100EPKcl>
1000030a8: f94023e8    	ldr	x8, [sp, #0x40]
1000030ac: eb080008    	subs	x8, x0, x8
1000030b0: 540000c0    	b.eq	0x1000030c8 <__ZNSt3__116__pad_and_outputB8ne180100IcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_+0xd8>
1000030b4: 14000001    	b	0x1000030b8 <__ZNSt3__116__pad_and_outputB8ne180100IcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_+0xc8>
;       __s.__sbuf_ = nullptr;
1000030b8: f81f03bf    	stur	xzr, [x29, #-0x10]
;       return __s;
1000030bc: f85f03a8    	ldur	x8, [x29, #-0x10]
1000030c0: f81f83a8    	stur	x8, [x29, #-0x8]
1000030c4: 1400004a    	b	0x1000031ec <__ZNSt3__116__pad_and_outputB8ne180100IcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_+0x1fc>
;   }
1000030c8: 14000001    	b	0x1000030cc <__ZNSt3__116__pad_and_outputB8ne180100IcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_+0xdc>
;   if (__ns > 0) {
1000030cc: f94027e8    	ldr	x8, [sp, #0x48]
1000030d0: f1000108    	subs	x8, x8, #0x0
1000030d4: 5400056d    	b.le	0x100003180 <__ZNSt3__116__pad_and_outputB8ne180100IcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_+0x190>
1000030d8: 14000001    	b	0x1000030dc <__ZNSt3__116__pad_and_outputB8ne180100IcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_+0xec>
;     basic_string<_CharT, _Traits> __sp(__ns, __fl);
1000030dc: f94027e1    	ldr	x1, [sp, #0x48]
1000030e0: 38dcf3a2    	ldursb	w2, [x29, #-0x31]
1000030e4: 9100a3e0    	add	x0, sp, #0x28
1000030e8: f90003e0    	str	x0, [sp]
1000030ec: 9400009a    	bl	0x100003354 <__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1B8ne180100Emc>
1000030f0: f94003e0    	ldr	x0, [sp]
;     if (__s.__sbuf_->sputn(__sp.data(), __ns) != __ns) {
1000030f4: f85f03a8    	ldur	x8, [x29, #-0x10]
1000030f8: f90007e8    	str	x8, [sp, #0x8]
1000030fc: 940000a5    	bl	0x100003390 <__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4dataB8ne180100Ev>
100003100: aa0003e1    	mov	x1, x0
100003104: f94007e0    	ldr	x0, [sp, #0x8]
100003108: f94027e2    	ldr	x2, [sp, #0x48]
10000310c: 94000083    	bl	0x100003318 <__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5sputnB8ne180100EPKcl>
100003110: f9000be0    	str	x0, [sp, #0x10]
100003114: 14000001    	b	0x100003118 <__ZNSt3__116__pad_and_outputB8ne180100IcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_+0x128>
100003118: f9400be8    	ldr	x8, [sp, #0x10]
;     if (__s.__sbuf_->sputn(__sp.data(), __ns) != __ns) {
10000311c: f94027e9    	ldr	x9, [sp, #0x48]
100003120: eb090108    	subs	x8, x8, x9
100003124: 540001c0    	b.eq	0x10000315c <__ZNSt3__116__pad_and_outputB8ne180100IcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_+0x16c>
100003128: 14000001    	b	0x10000312c <__ZNSt3__116__pad_and_outputB8ne180100IcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_+0x13c>
;       __s.__sbuf_ = nullptr;
10000312c: f81f03bf    	stur	xzr, [x29, #-0x10]
;       return __s;
100003130: f85f03a8    	ldur	x8, [x29, #-0x10]
100003134: f81f83a8    	stur	x8, [x29, #-0x8]
100003138: 52800028    	mov	w8, #0x1                ; =1
10000313c: b9001be8    	str	w8, [sp, #0x18]
100003140: 14000009    	b	0x100003164 <__ZNSt3__116__pad_and_outputB8ne180100IcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_+0x174>
; }
100003144: f90013e0    	str	x0, [sp, #0x20]
100003148: aa0103e8    	mov	x8, x1
10000314c: b9001fe8    	str	w8, [sp, #0x1c]
;   }
100003150: 9100a3e0    	add	x0, sp, #0x28
100003154: 9400027c    	bl	0x100003b44 <_strlen+0x100003b44>
100003158: 14000029    	b	0x1000031fc <__ZNSt3__116__pad_and_outputB8ne180100IcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_+0x20c>
10000315c: b9001bff    	str	wzr, [sp, #0x18]
100003160: 14000001    	b	0x100003164 <__ZNSt3__116__pad_and_outputB8ne180100IcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_+0x174>
100003164: 9100a3e0    	add	x0, sp, #0x28
100003168: 94000277    	bl	0x100003b44 <_strlen+0x100003b44>
10000316c: b9401be8    	ldr	w8, [sp, #0x18]
100003170: 34000068    	cbz	w8, 0x10000317c <__ZNSt3__116__pad_and_outputB8ne180100IcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_+0x18c>
100003174: 14000001    	b	0x100003178 <__ZNSt3__116__pad_and_outputB8ne180100IcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_+0x188>
100003178: 1400001d    	b	0x1000031ec <__ZNSt3__116__pad_and_outputB8ne180100IcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_+0x1fc>
;   }
10000317c: 14000001    	b	0x100003180 <__ZNSt3__116__pad_and_outputB8ne180100IcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_+0x190>
;   __np = __oe - __op;
100003180: f85d83a8    	ldur	x8, [x29, #-0x28]
100003184: f85e03a9    	ldur	x9, [x29, #-0x20]
100003188: eb090108    	subs	x8, x8, x9
10000318c: f90023e8    	str	x8, [sp, #0x40]
;   if (__np > 0) {
100003190: f94023e8    	ldr	x8, [sp, #0x40]
100003194: f1000108    	subs	x8, x8, #0x0
100003198: 540001ed    	b.le	0x1000031d4 <__ZNSt3__116__pad_and_outputB8ne180100IcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_+0x1e4>
10000319c: 14000001    	b	0x1000031a0 <__ZNSt3__116__pad_and_outputB8ne180100IcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_+0x1b0>
;     if (__s.__sbuf_->sputn(__op, __np) != __np) {
1000031a0: f85f03a0    	ldur	x0, [x29, #-0x10]
1000031a4: f85e03a1    	ldur	x1, [x29, #-0x20]
1000031a8: f94023e2    	ldr	x2, [sp, #0x40]
1000031ac: 9400005b    	bl	0x100003318 <__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5sputnB8ne180100EPKcl>
1000031b0: f94023e8    	ldr	x8, [sp, #0x40]
1000031b4: eb080008    	subs	x8, x0, x8
1000031b8: 540000c0    	b.eq	0x1000031d0 <__ZNSt3__116__pad_and_outputB8ne180100IcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_+0x1e0>
1000031bc: 14000001    	b	0x1000031c0 <__ZNSt3__116__pad_and_outputB8ne180100IcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_+0x1d0>
;       __s.__sbuf_ = nullptr;
1000031c0: f81f03bf    	stur	xzr, [x29, #-0x10]
;       return __s;
1000031c4: f85f03a8    	ldur	x8, [x29, #-0x10]
1000031c8: f81f83a8    	stur	x8, [x29, #-0x8]
1000031cc: 14000008    	b	0x1000031ec <__ZNSt3__116__pad_and_outputB8ne180100IcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_+0x1fc>
;   }
1000031d0: 14000001    	b	0x1000031d4 <__ZNSt3__116__pad_and_outputB8ne180100IcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_+0x1e4>
;   __iob.width(0);
1000031d4: f85d03a0    	ldur	x0, [x29, #-0x30]
1000031d8: d2800001    	mov	x1, #0x0                ; =0
1000031dc: 94000077    	bl	0x1000033b8 <__ZNSt3__18ios_base5widthB8ne180100El>
;   return __s;
1000031e0: f85f03a8    	ldur	x8, [x29, #-0x10]
1000031e4: f81f83a8    	stur	x8, [x29, #-0x8]
1000031e8: 14000001    	b	0x1000031ec <__ZNSt3__116__pad_and_outputB8ne180100IcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_+0x1fc>
; }
1000031ec: f85f83a0    	ldur	x0, [x29, #-0x8]
1000031f0: a9497bfd    	ldp	x29, x30, [sp, #0x90]
1000031f4: 910283ff    	add	sp, sp, #0xa0
1000031f8: d65f03c0    	ret
;   }
1000031fc: f94013e0    	ldr	x0, [sp, #0x20]
100003200: 94000236    	bl	0x100003ad8 <_strlen+0x100003ad8>

0000000100003204 <__ZNSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEEC1B8ne180100ERNS_13basic_ostreamIcS2_EE>:
;   _LIBCPP_HIDE_FROM_ABI ostreambuf_iterator(ostream_type& __s) _NOEXCEPT : __sbuf_(__s.rdbuf()) {}
100003204: d100c3ff    	sub	sp, sp, #0x30
100003208: a9027bfd    	stp	x29, x30, [sp, #0x20]
10000320c: 910083fd    	add	x29, sp, #0x20
100003210: f81f83a0    	stur	x0, [x29, #-0x8]
100003214: f9000be1    	str	x1, [sp, #0x10]
100003218: f85f83a0    	ldur	x0, [x29, #-0x8]
10000321c: f90007e0    	str	x0, [sp, #0x8]
100003220: f9400be1    	ldr	x1, [sp, #0x10]
100003224: 940000df    	bl	0x1000035a0 <__ZNSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEEC2B8ne180100ERNS_13basic_ostreamIcS2_EE>
100003228: f94007e0    	ldr	x0, [sp, #0x8]
10000322c: a9427bfd    	ldp	x29, x30, [sp, #0x20]
100003230: 9100c3ff    	add	sp, sp, #0x30
100003234: d65f03c0    	ret

0000000100003238 <__ZNKSt3__18ios_base5flagsB8ne180100Ev>:
; inline _LIBCPP_HIDE_FROM_ABI ios_base::fmtflags ios_base::flags() const { return __fmtflags_; }
100003238: d10043ff    	sub	sp, sp, #0x10
10000323c: f90007e0    	str	x0, [sp, #0x8]
100003240: f94007e8    	ldr	x8, [sp, #0x8]
100003244: b9400900    	ldr	w0, [x8, #0x8]
100003248: 910043ff    	add	sp, sp, #0x10
10000324c: d65f03c0    	ret

0000000100003250 <__ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE4fillB8ne180100Ev>:
; inline _LIBCPP_HIDE_FROM_ABI _CharT basic_ios<_CharT, _Traits>::fill() const {
100003250: d10083ff    	sub	sp, sp, #0x20
100003254: a9017bfd    	stp	x29, x30, [sp, #0x10]
100003258: 910043fd    	add	x29, sp, #0x10
10000325c: f90007e0    	str	x0, [sp, #0x8]
100003260: f94007e8    	ldr	x8, [sp, #0x8]
100003264: f90003e8    	str	x8, [sp]
;   if (traits_type::eq_int_type(traits_type::eof(), __fill_))
100003268: 940000fb    	bl	0x100003654 <__ZNSt3__111char_traitsIcE3eofB8ne180100Ev>
10000326c: f94003e8    	ldr	x8, [sp]
100003270: b9409101    	ldr	w1, [x8, #0x90]
100003274: 940000ef    	bl	0x100003630 <__ZNSt3__111char_traitsIcE11eq_int_typeB8ne180100Eii>
100003278: 36000120    	tbz	w0, #0x0, 0x10000329c <__ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE4fillB8ne180100Ev+0x4c>
10000327c: 14000001    	b	0x100003280 <__ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE4fillB8ne180100Ev+0x30>
100003280: f94003e0    	ldr	x0, [sp]
100003284: 52800401    	mov	w1, #0x20               ; =32
;     __fill_ = widen(' ');
100003288: 940000f5    	bl	0x10000365c <__ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5widenB8ne180100Ec>
10000328c: f94003e9    	ldr	x9, [sp]
100003290: 13001c08    	sxtb	w8, w0
100003294: b9009128    	str	w8, [x9, #0x90]
100003298: 14000001    	b	0x10000329c <__ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE4fillB8ne180100Ev+0x4c>
10000329c: f94003e8    	ldr	x8, [sp]
;   return __fill_;
1000032a0: b9409108    	ldr	w8, [x8, #0x90]
1000032a4: 13001d00    	sxtb	w0, w8
1000032a8: a9417bfd    	ldp	x29, x30, [sp, #0x10]
1000032ac: 910083ff    	add	sp, sp, #0x20
1000032b0: d65f03c0    	ret

00000001000032b4 <__ZNKSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEE6failedB8ne180100Ev>:
;   _LIBCPP_HIDE_FROM_ABI bool failed() const _NOEXCEPT { return __sbuf_ == nullptr; }
1000032b4: d10043ff    	sub	sp, sp, #0x10
1000032b8: f90007e0    	str	x0, [sp, #0x8]
1000032bc: f94007e8    	ldr	x8, [sp, #0x8]
1000032c0: f9400108    	ldr	x8, [x8]
1000032c4: f1000108    	subs	x8, x8, #0x0
1000032c8: 1a9f17e0    	cset	w0, eq
1000032cc: 910043ff    	add	sp, sp, #0x10
1000032d0: d65f03c0    	ret

00000001000032d4 <__ZNSt3__19basic_iosIcNS_11char_traitsIcEEE8setstateB8ne180100Ej>:
;   _LIBCPP_HIDE_FROM_ABI void setstate(iostate __state) { ios_base::setstate(__state); }
1000032d4: d10083ff    	sub	sp, sp, #0x20
1000032d8: a9017bfd    	stp	x29, x30, [sp, #0x10]
1000032dc: 910043fd    	add	x29, sp, #0x10
1000032e0: f90007e0    	str	x0, [sp, #0x8]
1000032e4: b90007e1    	str	w1, [sp, #0x4]
1000032e8: f94007e0    	ldr	x0, [sp, #0x8]
1000032ec: b94007e1    	ldr	w1, [sp, #0x4]
1000032f0: 94000115    	bl	0x100003744 <__ZNSt3__18ios_base8setstateB8ne180100Ej>
1000032f4: a9417bfd    	ldp	x29, x30, [sp, #0x10]
1000032f8: 910083ff    	add	sp, sp, #0x20
1000032fc: d65f03c0    	ret

0000000100003300 <__ZNKSt3__18ios_base5widthB8ne180100Ev>:
; inline _LIBCPP_HIDE_FROM_ABI streamsize ios_base::width() const { return __width_; }
100003300: d10043ff    	sub	sp, sp, #0x10
100003304: f90007e0    	str	x0, [sp, #0x8]
100003308: f94007e8    	ldr	x8, [sp, #0x8]
10000330c: f9400d00    	ldr	x0, [x8, #0x18]
100003310: 910043ff    	add	sp, sp, #0x10
100003314: d65f03c0    	ret

0000000100003318 <__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5sputnB8ne180100EPKcl>:
;   inline _LIBCPP_HIDE_FROM_ABI_AFTER_V1 streamsize sputn(const char_type* __s, streamsize __n) {
100003318: d100c3ff    	sub	sp, sp, #0x30
10000331c: a9027bfd    	stp	x29, x30, [sp, #0x20]
100003320: 910083fd    	add	x29, sp, #0x20
100003324: f81f83a0    	stur	x0, [x29, #-0x8]
100003328: f9000be1    	str	x1, [sp, #0x10]
10000332c: f90007e2    	str	x2, [sp, #0x8]
100003330: f85f83a0    	ldur	x0, [x29, #-0x8]
;     return xsputn(__s, __n);
100003334: f9400be1    	ldr	x1, [sp, #0x10]
100003338: f94007e2    	ldr	x2, [sp, #0x8]
10000333c: f9400008    	ldr	x8, [x0]
100003340: f9403108    	ldr	x8, [x8, #0x60]
100003344: d63f0100    	blr	x8
100003348: a9427bfd    	ldp	x29, x30, [sp, #0x20]
10000334c: 9100c3ff    	add	sp, sp, #0x30
100003350: d65f03c0    	ret

0000000100003354 <__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1B8ne180100Emc>:
;       : __r_(__default_init_tag(), __default_init_tag()) {
100003354: d100c3ff    	sub	sp, sp, #0x30
100003358: a9027bfd    	stp	x29, x30, [sp, #0x20]
10000335c: 910083fd    	add	x29, sp, #0x20
100003360: f81f83a0    	stur	x0, [x29, #-0x8]
100003364: f9000be1    	str	x1, [sp, #0x10]
100003368: 39003fe2    	strb	w2, [sp, #0xf]
10000336c: f85f83a0    	ldur	x0, [x29, #-0x8]
100003370: f90003e0    	str	x0, [sp]
100003374: f9400be1    	ldr	x1, [sp, #0x10]
100003378: 39c03fe2    	ldrsb	w2, [sp, #0xf]
10000337c: 9400001a    	bl	0x1000033e4 <__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B8ne180100Emc>
100003380: f94003e0    	ldr	x0, [sp]
;   }
100003384: a9427bfd    	ldp	x29, x30, [sp, #0x20]
100003388: 9100c3ff    	add	sp, sp, #0x30
10000338c: d65f03c0    	ret

0000000100003390 <__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4dataB8ne180100Ev>:
;   _LIBCPP_HIDE_FROM_ABI _LIBCPP_CONSTEXPR_SINCE_CXX20 value_type* data() _NOEXCEPT {
100003390: d10083ff    	sub	sp, sp, #0x20
100003394: a9017bfd    	stp	x29, x30, [sp, #0x10]
100003398: 910043fd    	add	x29, sp, #0x10
10000339c: f90007e0    	str	x0, [sp, #0x8]
1000033a0: f94007e0    	ldr	x0, [sp, #0x8]
;     return std::__to_address(__get_pointer());
1000033a4: 94000028    	bl	0x100003444 <__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13__get_pointerB8ne180100Ev>
1000033a8: 94000022    	bl	0x100003430 <__ZNSt3__112__to_addressB8ne180100IcEEPT_S2_>
1000033ac: a9417bfd    	ldp	x29, x30, [sp, #0x10]
1000033b0: 910083ff    	add	sp, sp, #0x20
1000033b4: d65f03c0    	ret

00000001000033b8 <__ZNSt3__18ios_base5widthB8ne180100El>:
; inline _LIBCPP_HIDE_FROM_ABI streamsize ios_base::width(streamsize __wide) {
1000033b8: d10083ff    	sub	sp, sp, #0x20
1000033bc: f9000fe0    	str	x0, [sp, #0x18]
1000033c0: f9000be1    	str	x1, [sp, #0x10]
1000033c4: f9400fe9    	ldr	x9, [sp, #0x18]
;   streamsize __r = __width_;
1000033c8: f9400d28    	ldr	x8, [x9, #0x18]
1000033cc: f90007e8    	str	x8, [sp, #0x8]
;   __width_       = __wide;
1000033d0: f9400be8    	ldr	x8, [sp, #0x10]
1000033d4: f9000d28    	str	x8, [x9, #0x18]
;   return __r;
1000033d8: f94007e0    	ldr	x0, [sp, #0x8]
1000033dc: 910083ff    	add	sp, sp, #0x20
1000033e0: d65f03c0    	ret

00000001000033e4 <__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B8ne180100Emc>:
;       : __r_(__default_init_tag(), __default_init_tag()) {
1000033e4: d100c3ff    	sub	sp, sp, #0x30
1000033e8: a9027bfd    	stp	x29, x30, [sp, #0x20]
1000033ec: 910083fd    	add	x29, sp, #0x20
1000033f0: f81f83a0    	stur	x0, [x29, #-0x8]
1000033f4: f9000be1    	str	x1, [sp, #0x10]
1000033f8: 39003fe2    	strb	w2, [sp, #0xf]
1000033fc: f85f83a0    	ldur	x0, [x29, #-0x8]
100003400: f90003e0    	str	x0, [sp]
100003404: 91003be1    	add	x1, sp, #0xe
100003408: 910037e2    	add	x2, sp, #0xd
10000340c: 97fff8d5    	bl	0x100001760 <__ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_EC1B8ne180100INS_18__default_init_tagESA_EEOT_OT0_>
100003410: f94003e0    	ldr	x0, [sp]
;     __init(__n, __c);
100003414: f9400be1    	ldr	x1, [sp, #0x10]
100003418: 39c03fe2    	ldrsb	w2, [sp, #0xf]
10000341c: 940001c7    	bl	0x100003b38 <_strlen+0x100003b38>
100003420: f94003e0    	ldr	x0, [sp]
;   }
100003424: a9427bfd    	ldp	x29, x30, [sp, #0x20]
100003428: 9100c3ff    	add	sp, sp, #0x30
10000342c: d65f03c0    	ret

0000000100003430 <__ZNSt3__112__to_addressB8ne180100IcEEPT_S2_>:
; _LIBCPP_HIDE_FROM_ABI _LIBCPP_CONSTEXPR _Tp* __to_address(_Tp* __p) _NOEXCEPT {
100003430: d10043ff    	sub	sp, sp, #0x10
100003434: f90007e0    	str	x0, [sp, #0x8]
;   return __p;
100003438: f94007e0    	ldr	x0, [sp, #0x8]
10000343c: 910043ff    	add	sp, sp, #0x10
100003440: d65f03c0    	ret

0000000100003444 <__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13__get_pointerB8ne180100Ev>:
;   _LIBCPP_HIDE_FROM_ABI _LIBCPP_CONSTEXPR_SINCE_CXX20 pointer __get_pointer() _NOEXCEPT {
100003444: d100c3ff    	sub	sp, sp, #0x30
100003448: a9027bfd    	stp	x29, x30, [sp, #0x20]
10000344c: 910083fd    	add	x29, sp, #0x20
100003450: f81f83a0    	stur	x0, [x29, #-0x8]
100003454: f85f83a0    	ldur	x0, [x29, #-0x8]
100003458: f9000be0    	str	x0, [sp, #0x10]
;     return __is_long() ? __get_long_pointer() : __get_short_pointer();
10000345c: 9400000f    	bl	0x100003498 <__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE9__is_longB8ne180100Ev>
100003460: 360000c0    	tbz	w0, #0x0, 0x100003478 <__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13__get_pointerB8ne180100Ev+0x34>
100003464: 14000001    	b	0x100003468 <__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13__get_pointerB8ne180100Ev+0x24>
100003468: f9400be0    	ldr	x0, [sp, #0x10]
;     return __is_long() ? __get_long_pointer() : __get_short_pointer();
10000346c: 94000018    	bl	0x1000034cc <__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE18__get_long_pointerB8ne180100Ev>
100003470: f90007e0    	str	x0, [sp, #0x8]
100003474: 14000005    	b	0x100003488 <__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13__get_pointerB8ne180100Ev+0x44>
100003478: f9400be0    	ldr	x0, [sp, #0x10]
;     return __is_long() ? __get_long_pointer() : __get_short_pointer();
10000347c: 9400001e    	bl	0x1000034f4 <__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE19__get_short_pointerB8ne180100Ev>
100003480: f90007e0    	str	x0, [sp, #0x8]
100003484: 14000001    	b	0x100003488 <__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13__get_pointerB8ne180100Ev+0x44>
100003488: f94007e0    	ldr	x0, [sp, #0x8]
;     return __is_long() ? __get_long_pointer() : __get_short_pointer();
10000348c: a9427bfd    	ldp	x29, x30, [sp, #0x20]
100003490: 9100c3ff    	add	sp, sp, #0x30
100003494: d65f03c0    	ret

0000000100003498 <__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE9__is_longB8ne180100Ev>:
;   __is_long() const _NOEXCEPT {
100003498: d10083ff    	sub	sp, sp, #0x20
10000349c: a9017bfd    	stp	x29, x30, [sp, #0x10]
1000034a0: 910043fd    	add	x29, sp, #0x10
1000034a4: f90007e0    	str	x0, [sp, #0x8]
1000034a8: f94007e0    	ldr	x0, [sp, #0x8]
;     return __r_.first().__s.__is_long_;
1000034ac: 9400001c    	bl	0x10000351c <__ZNKSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E5firstB8ne180100Ev>
1000034b0: 39405c08    	ldrb	w8, [x0, #0x17]
1000034b4: 53077d08    	lsr	w8, w8, #7
1000034b8: 71000108    	subs	w8, w8, #0x0
1000034bc: 1a9f07e0    	cset	w0, ne
1000034c0: a9417bfd    	ldp	x29, x30, [sp, #0x10]
1000034c4: 910083ff    	add	sp, sp, #0x20
1000034c8: d65f03c0    	ret

00000001000034cc <__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE18__get_long_pointerB8ne180100Ev>:
;   _LIBCPP_HIDE_FROM_ABI _LIBCPP_CONSTEXPR_SINCE_CXX20 pointer __get_long_pointer() _NOEXCEPT {
1000034cc: d10083ff    	sub	sp, sp, #0x20
1000034d0: a9017bfd    	stp	x29, x30, [sp, #0x10]
1000034d4: 910043fd    	add	x29, sp, #0x10
1000034d8: f90007e0    	str	x0, [sp, #0x8]
1000034dc: f94007e0    	ldr	x0, [sp, #0x8]
;     return __r_.first().__l.__data_;
1000034e0: 9400001d    	bl	0x100003554 <__ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E5firstB8ne180100Ev>
1000034e4: f9400000    	ldr	x0, [x0]
1000034e8: a9417bfd    	ldp	x29, x30, [sp, #0x10]
1000034ec: 910083ff    	add	sp, sp, #0x20
1000034f0: d65f03c0    	ret

00000001000034f4 <__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE19__get_short_pointerB8ne180100Ev>:
;   _LIBCPP_HIDE_FROM_ABI _LIBCPP_CONSTEXPR_SINCE_CXX20 pointer __get_short_pointer() _NOEXCEPT {
1000034f4: d10083ff    	sub	sp, sp, #0x20
1000034f8: a9017bfd    	stp	x29, x30, [sp, #0x10]
1000034fc: 910043fd    	add	x29, sp, #0x10
100003500: f90007e0    	str	x0, [sp, #0x8]
100003504: f94007e0    	ldr	x0, [sp, #0x8]
;     return pointer_traits<pointer>::pointer_to(__r_.first().__s.__data_[0]);
100003508: 94000013    	bl	0x100003554 <__ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E5firstB8ne180100Ev>
10000350c: 94000020    	bl	0x10000358c <__ZNSt3__114pointer_traitsIPcE10pointer_toB8ne180100ERc>
100003510: a9417bfd    	ldp	x29, x30, [sp, #0x10]
100003514: 910083ff    	add	sp, sp, #0x20
100003518: d65f03c0    	ret

000000010000351c <__ZNKSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E5firstB8ne180100Ev>:
;   _LIBCPP_HIDE_FROM_ABI _LIBCPP_CONSTEXPR typename _Base1::const_reference first() const _NOEXCEPT {
10000351c: d10083ff    	sub	sp, sp, #0x20
100003520: a9017bfd    	stp	x29, x30, [sp, #0x10]
100003524: 910043fd    	add	x29, sp, #0x10
100003528: f90007e0    	str	x0, [sp, #0x8]
10000352c: f94007e0    	ldr	x0, [sp, #0x8]
;     return static_cast<_Base1 const&>(*this).__get();
100003530: 94000004    	bl	0x100003540 <__ZNKSt3__122__compressed_pair_elemINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repELi0ELb0EE5__getB8ne180100Ev>
100003534: a9417bfd    	ldp	x29, x30, [sp, #0x10]
100003538: 910083ff    	add	sp, sp, #0x20
10000353c: d65f03c0    	ret

0000000100003540 <__ZNKSt3__122__compressed_pair_elemINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repELi0ELb0EE5__getB8ne180100Ev>:
;   _LIBCPP_HIDE_FROM_ABI _LIBCPP_CONSTEXPR const_reference __get() const _NOEXCEPT { return __value_; }
100003540: d10043ff    	sub	sp, sp, #0x10
100003544: f90007e0    	str	x0, [sp, #0x8]
100003548: f94007e0    	ldr	x0, [sp, #0x8]
10000354c: 910043ff    	add	sp, sp, #0x10
100003550: d65f03c0    	ret

0000000100003554 <__ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E5firstB8ne180100Ev>:
;   _LIBCPP_HIDE_FROM_ABI _LIBCPP_CONSTEXPR_SINCE_CXX14 typename _Base1::reference first() _NOEXCEPT {
100003554: d10083ff    	sub	sp, sp, #0x20
100003558: a9017bfd    	stp	x29, x30, [sp, #0x10]
10000355c: 910043fd    	add	x29, sp, #0x10
100003560: f90007e0    	str	x0, [sp, #0x8]
100003564: f94007e0    	ldr	x0, [sp, #0x8]
;     return static_cast<_Base1&>(*this).__get();
100003568: 94000004    	bl	0x100003578 <__ZNSt3__122__compressed_pair_elemINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repELi0ELb0EE5__getB8ne180100Ev>
10000356c: a9417bfd    	ldp	x29, x30, [sp, #0x10]
100003570: 910083ff    	add	sp, sp, #0x20
100003574: d65f03c0    	ret

0000000100003578 <__ZNSt3__122__compressed_pair_elemINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repELi0ELb0EE5__getB8ne180100Ev>:
;   _LIBCPP_HIDE_FROM_ABI _LIBCPP_CONSTEXPR_SINCE_CXX14 reference __get() _NOEXCEPT { return __value_; }
100003578: d10043ff    	sub	sp, sp, #0x10
10000357c: f90007e0    	str	x0, [sp, #0x8]
100003580: f94007e0    	ldr	x0, [sp, #0x8]
100003584: 910043ff    	add	sp, sp, #0x10
100003588: d65f03c0    	ret

000000010000358c <__ZNSt3__114pointer_traitsIPcE10pointer_toB8ne180100ERc>:
;   pointer_to(__conditional_t<is_void<element_type>::value, __nat, element_type>& __r) _NOEXCEPT {
10000358c: d10043ff    	sub	sp, sp, #0x10
100003590: f90007e0    	str	x0, [sp, #0x8]
;     return std::addressof(__r);
100003594: f94007e0    	ldr	x0, [sp, #0x8]
100003598: 910043ff    	add	sp, sp, #0x10
10000359c: d65f03c0    	ret

00000001000035a0 <__ZNSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEEC2B8ne180100ERNS_13basic_ostreamIcS2_EE>:
;   _LIBCPP_HIDE_FROM_ABI ostreambuf_iterator(ostream_type& __s) _NOEXCEPT : __sbuf_(__s.rdbuf()) {}
1000035a0: d100c3ff    	sub	sp, sp, #0x30
1000035a4: a9027bfd    	stp	x29, x30, [sp, #0x20]
1000035a8: 910083fd    	add	x29, sp, #0x20
1000035ac: f81f83a0    	stur	x0, [x29, #-0x8]
1000035b0: f9000be1    	str	x1, [sp, #0x10]
1000035b4: f85f83a8    	ldur	x8, [x29, #-0x8]
1000035b8: f90003e8    	str	x8, [sp]
1000035bc: f9400be8    	ldr	x8, [sp, #0x10]
1000035c0: f9400109    	ldr	x9, [x8]
1000035c4: f85e8129    	ldur	x9, [x9, #-0x18]
1000035c8: 8b090100    	add	x0, x8, x9
1000035cc: 9400000a    	bl	0x1000035f4 <__ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5rdbufB8ne180100Ev>
1000035d0: f90007e0    	str	x0, [sp, #0x8]
1000035d4: 14000001    	b	0x1000035d8 <__ZNSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEEC2B8ne180100ERNS_13basic_ostreamIcS2_EE+0x38>
1000035d8: f94003e0    	ldr	x0, [sp]
1000035dc: f94007e8    	ldr	x8, [sp, #0x8]
;   _LIBCPP_HIDE_FROM_ABI ostreambuf_iterator(ostream_type& __s) _NOEXCEPT : __sbuf_(__s.rdbuf()) {}
1000035e0: f9000008    	str	x8, [x0]
1000035e4: a9427bfd    	ldp	x29, x30, [sp, #0x20]
1000035e8: 9100c3ff    	add	sp, sp, #0x30
1000035ec: d65f03c0    	ret
1000035f0: 97fff8b0    	bl	0x1000018b0 <___clang_call_terminate>

00000001000035f4 <__ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5rdbufB8ne180100Ev>:
; inline _LIBCPP_HIDE_FROM_ABI basic_streambuf<_CharT, _Traits>* basic_ios<_CharT, _Traits>::rdbuf() const {
1000035f4: d10083ff    	sub	sp, sp, #0x20
1000035f8: a9017bfd    	stp	x29, x30, [sp, #0x10]
1000035fc: 910043fd    	add	x29, sp, #0x10
100003600: f90007e0    	str	x0, [sp, #0x8]
100003604: f94007e0    	ldr	x0, [sp, #0x8]
;   return static_cast<basic_streambuf<char_type, traits_type>*>(ios_base::rdbuf());
100003608: 94000004    	bl	0x100003618 <__ZNKSt3__18ios_base5rdbufB8ne180100Ev>
10000360c: a9417bfd    	ldp	x29, x30, [sp, #0x10]
100003610: 910083ff    	add	sp, sp, #0x20
100003614: d65f03c0    	ret

0000000100003618 <__ZNKSt3__18ios_base5rdbufB8ne180100Ev>:
;   _LIBCPP_HIDE_FROM_ABI void* rdbuf() const { return __rdbuf_; }
100003618: d10043ff    	sub	sp, sp, #0x10
10000361c: f90007e0    	str	x0, [sp, #0x8]
100003620: f94007e8    	ldr	x8, [sp, #0x8]
100003624: f9401500    	ldr	x0, [x8, #0x28]
100003628: 910043ff    	add	sp, sp, #0x10
10000362c: d65f03c0    	ret

0000000100003630 <__ZNSt3__111char_traitsIcE11eq_int_typeB8ne180100Eii>:
;   static inline _LIBCPP_HIDE_FROM_ABI _LIBCPP_CONSTEXPR bool eq_int_type(int_type __c1, int_type __c2) _NOEXCEPT {
100003630: d10043ff    	sub	sp, sp, #0x10
100003634: b9000fe0    	str	w0, [sp, #0xc]
100003638: b9000be1    	str	w1, [sp, #0x8]
;     return __c1 == __c2;
10000363c: b9400fe8    	ldr	w8, [sp, #0xc]
100003640: b9400be9    	ldr	w9, [sp, #0x8]
100003644: 6b090108    	subs	w8, w8, w9
100003648: 1a9f17e0    	cset	w0, eq
10000364c: 910043ff    	add	sp, sp, #0x10
100003650: d65f03c0    	ret

0000000100003654 <__ZNSt3__111char_traitsIcE3eofB8ne180100Ev>:
;   static inline _LIBCPP_HIDE_FROM_ABI _LIBCPP_CONSTEXPR int_type eof() _NOEXCEPT { return int_type(EOF); }
100003654: 12800000    	mov	w0, #-0x1               ; =-1
100003658: d65f03c0    	ret

000000010000365c <__ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5widenB8ne180100Ec>:
; inline _LIBCPP_HIDE_FROM_ABI _CharT basic_ios<_CharT, _Traits>::widen(char __c) const {
10000365c: d10143ff    	sub	sp, sp, #0x50
100003660: a9047bfd    	stp	x29, x30, [sp, #0x40]
100003664: 910103fd    	add	x29, sp, #0x40
100003668: f81f83a0    	stur	x0, [x29, #-0x8]
10000366c: 381f73a1    	sturb	w1, [x29, #-0x9]
100003670: f85f83a0    	ldur	x0, [x29, #-0x8]
100003674: d10063a8    	sub	x8, x29, #0x18
100003678: f90007e8    	str	x8, [sp, #0x8]
;   return std::use_facet<ctype<char_type> >(getloc()).widen(__c);
10000367c: 94000126    	bl	0x100003b14 <_strlen+0x100003b14>
100003680: f94007e0    	ldr	x0, [sp, #0x8]
100003684: 94000017    	bl	0x1000036e0 <__ZNSt3__19use_facetB8ne180100INS_5ctypeIcEEEERKT_RKNS_6localeE>
100003688: f9000be0    	str	x0, [sp, #0x10]
10000368c: 14000001    	b	0x100003690 <__ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5widenB8ne180100Ec+0x34>
100003690: f9400be0    	ldr	x0, [sp, #0x10]
;   return std::use_facet<ctype<char_type> >(getloc()).widen(__c);
100003694: 38df73a1    	ldursb	w1, [x29, #-0x9]
100003698: 9400001d    	bl	0x10000370c <__ZNKSt3__15ctypeIcE5widenB8ne180100Ec>
10000369c: b90007e0    	str	w0, [sp, #0x4]
1000036a0: 14000001    	b	0x1000036a4 <__ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5widenB8ne180100Ec+0x48>
1000036a4: d10063a0    	sub	x0, x29, #0x18
1000036a8: 9400014b    	bl	0x100003bd4 <_strlen+0x100003bd4>
1000036ac: b94007e8    	ldr	w8, [sp, #0x4]
1000036b0: 13001d00    	sxtb	w0, w8
1000036b4: a9447bfd    	ldp	x29, x30, [sp, #0x40]
1000036b8: 910143ff    	add	sp, sp, #0x50
1000036bc: d65f03c0    	ret
; }
1000036c0: f90013e0    	str	x0, [sp, #0x20]
1000036c4: aa0103e8    	mov	x8, x1
1000036c8: b9001fe8    	str	w8, [sp, #0x1c]
;   return std::use_facet<ctype<char_type> >(getloc()).widen(__c);
1000036cc: d10063a0    	sub	x0, x29, #0x18
1000036d0: 94000141    	bl	0x100003bd4 <_strlen+0x100003bd4>
1000036d4: 14000001    	b	0x1000036d8 <__ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5widenB8ne180100Ec+0x7c>
1000036d8: f94013e0    	ldr	x0, [sp, #0x20]
1000036dc: 940000ff    	bl	0x100003ad8 <_strlen+0x100003ad8>

00000001000036e0 <__ZNSt3__19use_facetB8ne180100INS_5ctypeIcEEEERKT_RKNS_6localeE>:
; inline _LIBCPP_HIDE_FROM_ABI const _Facet& use_facet(const locale& __l) {
1000036e0: d10083ff    	sub	sp, sp, #0x20
1000036e4: a9017bfd    	stp	x29, x30, [sp, #0x10]
1000036e8: 910043fd    	add	x29, sp, #0x10
1000036ec: f90007e0    	str	x0, [sp, #0x8]
;   return static_cast<const _Facet&>(*__l.use_facet(_Facet::id));
1000036f0: f94007e0    	ldr	x0, [sp, #0x8]
1000036f4: b0000001    	adrp	x1, 0x100004000 <_strlen+0x100004000>
1000036f8: f9405821    	ldr	x1, [x1, #0xb0]
1000036fc: 94000103    	bl	0x100003b08 <_strlen+0x100003b08>
100003700: a9417bfd    	ldp	x29, x30, [sp, #0x10]
100003704: 910083ff    	add	sp, sp, #0x20
100003708: d65f03c0    	ret

000000010000370c <__ZNKSt3__15ctypeIcE5widenB8ne180100Ec>:
;   _LIBCPP_HIDE_FROM_ABI char_type widen(char __c) const { return do_widen(__c); }
10000370c: d10083ff    	sub	sp, sp, #0x20
100003710: a9017bfd    	stp	x29, x30, [sp, #0x10]
100003714: 910043fd    	add	x29, sp, #0x10
100003718: f90007e0    	str	x0, [sp, #0x8]
10000371c: 39001fe1    	strb	w1, [sp, #0x7]
100003720: f94007e0    	ldr	x0, [sp, #0x8]
100003724: 39c01fe1    	ldrsb	w1, [sp, #0x7]
100003728: f9400008    	ldr	x8, [x0]
10000372c: f9401d08    	ldr	x8, [x8, #0x38]
100003730: d63f0100    	blr	x8
100003734: 13001c00    	sxtb	w0, w0
100003738: a9417bfd    	ldp	x29, x30, [sp, #0x10]
10000373c: 910083ff    	add	sp, sp, #0x20
100003740: d65f03c0    	ret

0000000100003744 <__ZNSt3__18ios_base8setstateB8ne180100Ej>:
; inline _LIBCPP_HIDE_FROM_ABI void ios_base::setstate(iostate __state) { clear(__rdstate_ | __state); }
100003744: d10083ff    	sub	sp, sp, #0x20
100003748: a9017bfd    	stp	x29, x30, [sp, #0x10]
10000374c: 910043fd    	add	x29, sp, #0x10
100003750: f90007e0    	str	x0, [sp, #0x8]
100003754: b90007e1    	str	w1, [sp, #0x4]
100003758: f94007e0    	ldr	x0, [sp, #0x8]
10000375c: b9402008    	ldr	w8, [x0, #0x20]
100003760: b94007e9    	ldr	w9, [sp, #0x4]
100003764: 2a090101    	orr	w1, w8, w9
100003768: 94000124    	bl	0x100003bf8 <_strlen+0x100003bf8>
10000376c: a9417bfd    	ldp	x29, x30, [sp, #0x10]
100003770: 910083ff    	add	sp, sp, #0x20
100003774: d65f03c0    	ret

0000000100003778 <__ZNSt3__112__tuple_leafILm1EZ4mainE3$_0Lb0EE3getB8ne180100Ev>:
;   _LIBCPP_HIDE_FROM_ABI _LIBCPP_CONSTEXPR_SINCE_CXX14 _Hp& get() _NOEXCEPT { return __value_; }
100003778: d10043ff    	sub	sp, sp, #0x10
10000377c: f90007e0    	str	x0, [sp, #0x8]
100003780: f94007e0    	ldr	x0, [sp, #0x8]
100003784: 910043ff    	add	sp, sp, #0x10
100003788: d65f03c0    	ret

000000010000378c <__ZNKSt3__117__compressed_pairIPNS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEEZ4mainE3$_0EEENS4_IS8_EEE5firstB8ne180100Ev>:
;   _LIBCPP_HIDE_FROM_ABI _LIBCPP_CONSTEXPR typename _Base1::const_reference first() const _NOEXCEPT {
10000378c: d10083ff    	sub	sp, sp, #0x20
100003790: a9017bfd    	stp	x29, x30, [sp, #0x10]
100003794: 910043fd    	add	x29, sp, #0x10
100003798: f90007e0    	str	x0, [sp, #0x8]
10000379c: f94007e0    	ldr	x0, [sp, #0x8]
;     return static_cast<_Base1 const&>(*this).__get();
1000037a0: 94000004    	bl	0x1000037b0 <__ZNKSt3__122__compressed_pair_elemIPNS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEEZ4mainE3$_0EEELi0ELb0EE5__getB8ne180100Ev>
1000037a4: a9417bfd    	ldp	x29, x30, [sp, #0x10]
1000037a8: 910083ff    	add	sp, sp, #0x20
1000037ac: d65f03c0    	ret

00000001000037b0 <__ZNKSt3__122__compressed_pair_elemIPNS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEEZ4mainE3$_0EEELi0ELb0EE5__getB8ne180100Ev>:
;   _LIBCPP_HIDE_FROM_ABI _LIBCPP_CONSTEXPR const_reference __get() const _NOEXCEPT { return __value_; }
1000037b0: d10043ff    	sub	sp, sp, #0x10
1000037b4: f90007e0    	str	x0, [sp, #0x8]
1000037b8: f94007e0    	ldr	x0, [sp, #0x8]
1000037bc: 910043ff    	add	sp, sp, #0x10
1000037c0: d65f03c0    	ret

00000001000037c4 <__ZNSt3__117__compressed_pairIPNS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEEZ4mainE3$_0EEENS4_IS8_EEE5firstB8ne180100Ev>:
;   _LIBCPP_HIDE_FROM_ABI _LIBCPP_CONSTEXPR_SINCE_CXX14 typename _Base1::reference first() _NOEXCEPT {
1000037c4: d10083ff    	sub	sp, sp, #0x20
1000037c8: a9017bfd    	stp	x29, x30, [sp, #0x10]
1000037cc: 910043fd    	add	x29, sp, #0x10
1000037d0: f90007e0    	str	x0, [sp, #0x8]
1000037d4: f94007e0    	ldr	x0, [sp, #0x8]
;     return static_cast<_Base1&>(*this).__get();
1000037d8: 94000004    	bl	0x1000037e8 <__ZNSt3__122__compressed_pair_elemIPNS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEEZ4mainE3$_0EEELi0ELb0EE5__getB8ne180100Ev>
1000037dc: a9417bfd    	ldp	x29, x30, [sp, #0x10]
1000037e0: 910083ff    	add	sp, sp, #0x20
1000037e4: d65f03c0    	ret

00000001000037e8 <__ZNSt3__122__compressed_pair_elemIPNS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEEZ4mainE3$_0EEELi0ELb0EE5__getB8ne180100Ev>:
;   _LIBCPP_HIDE_FROM_ABI _LIBCPP_CONSTEXPR_SINCE_CXX14 reference __get() _NOEXCEPT { return __value_; }
1000037e8: d10043ff    	sub	sp, sp, #0x10
1000037ec: f90007e0    	str	x0, [sp, #0x8]
1000037f0: f94007e0    	ldr	x0, [sp, #0x8]
1000037f4: 910043ff    	add	sp, sp, #0x10
1000037f8: d65f03c0    	ret

00000001000037fc <__ZNSt3__110unique_ptrINS_5tupleIJNS0_INS_15__thread_structENS_14default_deleteIS2_EEEEZ4mainE3$_0EEENS3_IS7_EEED2B8ne180100Ev>:
;   _LIBCPP_HIDE_FROM_ABI _LIBCPP_CONSTEXPR_SINCE_CXX23 ~unique_ptr() { reset(); }
1000037fc: d10083ff    	sub	sp, sp, #0x20
100003800: a9017bfd    	stp	x29, x30, [sp, #0x10]
100003804: 910043fd    	add	x29, sp, #0x10
100003808: f90007e0    	str	x0, [sp, #0x8]
10000380c: f94007e0    	ldr	x0, [sp, #0x8]
100003810: f90003e0    	str	x0, [sp]
100003814: d2800001    	mov	x1, #0x0                ; =0
100003818: 94000005    	bl	0x10000382c <__ZNSt3__110unique_ptrINS_5tupleIJNS0_INS_15__thread_structENS_14default_deleteIS2_EEEEZ4mainE3$_0EEENS3_IS7_EEE5resetB8ne180100EPS7_>
10000381c: f94003e0    	ldr	x0, [sp]
100003820: a9417bfd    	ldp	x29, x30, [sp, #0x10]
100003824: 910083ff    	add	sp, sp, #0x20
100003828: d65f03c0    	ret

000000010000382c <__ZNSt3__110unique_ptrINS_5tupleIJNS0_INS_15__thread_structENS_14default_deleteIS2_EEEEZ4mainE3$_0EEENS3_IS7_EEE5resetB8ne180100EPS7_>:
;   _LIBCPP_HIDE_FROM_ABI _LIBCPP_CONSTEXPR_SINCE_CXX23 void reset(pointer __p = pointer()) _NOEXCEPT {
10000382c: d10103ff    	sub	sp, sp, #0x40
100003830: a9037bfd    	stp	x29, x30, [sp, #0x30]
100003834: 9100c3fd    	add	x29, sp, #0x30
100003838: f81f83a0    	stur	x0, [x29, #-0x8]
10000383c: f81f03a1    	stur	x1, [x29, #-0x10]
100003840: f85f83a0    	ldur	x0, [x29, #-0x8]
100003844: f90007e0    	str	x0, [sp, #0x8]
;     pointer __tmp  = __ptr_.first();
100003848: 97ffffdf    	bl	0x1000037c4 <__ZNSt3__117__compressed_pairIPNS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEEZ4mainE3$_0EEENS4_IS8_EEE5firstB8ne180100Ev>
10000384c: aa0003e8    	mov	x8, x0
100003850: f94007e0    	ldr	x0, [sp, #0x8]
100003854: f9400108    	ldr	x8, [x8]
100003858: f9000fe8    	str	x8, [sp, #0x18]
;     __ptr_.first() = __p;
10000385c: f85f03a8    	ldur	x8, [x29, #-0x10]
100003860: f9000be8    	str	x8, [sp, #0x10]
100003864: 97ffffd8    	bl	0x1000037c4 <__ZNSt3__117__compressed_pairIPNS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEEZ4mainE3$_0EEENS4_IS8_EEE5firstB8ne180100Ev>
100003868: f9400be8    	ldr	x8, [sp, #0x10]
10000386c: f9000008    	str	x8, [x0]
;     if (__tmp)
100003870: f9400fe8    	ldr	x8, [sp, #0x18]
100003874: b40000e8    	cbz	x8, 0x100003890 <__ZNSt3__110unique_ptrINS_5tupleIJNS0_INS_15__thread_structENS_14default_deleteIS2_EEEEZ4mainE3$_0EEENS3_IS7_EEE5resetB8ne180100EPS7_+0x64>
100003878: 14000001    	b	0x10000387c <__ZNSt3__110unique_ptrINS_5tupleIJNS0_INS_15__thread_structENS_14default_deleteIS2_EEEEZ4mainE3$_0EEENS3_IS7_EEE5resetB8ne180100EPS7_+0x50>
10000387c: f94007e0    	ldr	x0, [sp, #0x8]
;       __ptr_.second()(__tmp);
100003880: 94000007    	bl	0x10000389c <__ZNSt3__117__compressed_pairIPNS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEEZ4mainE3$_0EEENS4_IS8_EEE6secondB8ne180100Ev>
100003884: f9400fe1    	ldr	x1, [sp, #0x18]
100003888: 9400000e    	bl	0x1000038c0 <__ZNKSt3__114default_deleteINS_5tupleIJNS_10unique_ptrINS_15__thread_structENS0_IS3_EEEEZ4mainE3$_0EEEEclB8ne180100EPS7_>
10000388c: 14000001    	b	0x100003890 <__ZNSt3__110unique_ptrINS_5tupleIJNS0_INS_15__thread_structENS_14default_deleteIS2_EEEEZ4mainE3$_0EEENS3_IS7_EEE5resetB8ne180100EPS7_+0x64>
;   }
100003890: a9437bfd    	ldp	x29, x30, [sp, #0x30]
100003894: 910103ff    	add	sp, sp, #0x40
100003898: d65f03c0    	ret

000000010000389c <__ZNSt3__117__compressed_pairIPNS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEEZ4mainE3$_0EEENS4_IS8_EEE6secondB8ne180100Ev>:
;   _LIBCPP_HIDE_FROM_ABI _LIBCPP_CONSTEXPR_SINCE_CXX14 typename _Base2::reference second() _NOEXCEPT {
10000389c: d10083ff    	sub	sp, sp, #0x20
1000038a0: a9017bfd    	stp	x29, x30, [sp, #0x10]
1000038a4: 910043fd    	add	x29, sp, #0x10
1000038a8: f90007e0    	str	x0, [sp, #0x8]
1000038ac: f94007e0    	ldr	x0, [sp, #0x8]
;     return static_cast<_Base2&>(*this).__get();
1000038b0: 94000015    	bl	0x100003904 <__ZNSt3__122__compressed_pair_elemINS_14default_deleteINS_5tupleIJNS_10unique_ptrINS_15__thread_structENS1_IS4_EEEEZ4mainE3$_0EEEEELi1ELb1EE5__getB8ne180100Ev>
1000038b4: a9417bfd    	ldp	x29, x30, [sp, #0x10]
1000038b8: 910083ff    	add	sp, sp, #0x20
1000038bc: d65f03c0    	ret

00000001000038c0 <__ZNKSt3__114default_deleteINS_5tupleIJNS_10unique_ptrINS_15__thread_structENS0_IS3_EEEEZ4mainE3$_0EEEEclB8ne180100EPS7_>:
;   _LIBCPP_HIDE_FROM_ABI _LIBCPP_CONSTEXPR_SINCE_CXX23 void operator()(_Tp* __ptr) const _NOEXCEPT {
1000038c0: d100c3ff    	sub	sp, sp, #0x30
1000038c4: a9027bfd    	stp	x29, x30, [sp, #0x20]
1000038c8: 910083fd    	add	x29, sp, #0x20
1000038cc: f81f83a0    	stur	x0, [x29, #-0x8]
1000038d0: f9000be1    	str	x1, [sp, #0x10]
;     delete __ptr;
1000038d4: f9400be8    	ldr	x8, [sp, #0x10]
1000038d8: f90007e8    	str	x8, [sp, #0x8]
1000038dc: b40000e8    	cbz	x8, 0x1000038f8 <__ZNKSt3__114default_deleteINS_5tupleIJNS_10unique_ptrINS_15__thread_structENS0_IS3_EEEEZ4mainE3$_0EEEEclB8ne180100EPS7_+0x38>
1000038e0: 14000001    	b	0x1000038e4 <__ZNKSt3__114default_deleteINS_5tupleIJNS_10unique_ptrINS_15__thread_structENS0_IS3_EEEEZ4mainE3$_0EEEEclB8ne180100EPS7_+0x24>
1000038e4: f94007e0    	ldr	x0, [sp, #0x8]
;     delete __ptr;
1000038e8: 9400000c    	bl	0x100003918 <__ZNSt3__15tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS2_EEEEZ4mainE3$_0EED1Ev>
1000038ec: f94007e0    	ldr	x0, [sp, #0x8]
1000038f0: 940000cb    	bl	0x100003c1c <_strlen+0x100003c1c>
1000038f4: 14000001    	b	0x1000038f8 <__ZNKSt3__114default_deleteINS_5tupleIJNS_10unique_ptrINS_15__thread_structENS0_IS3_EEEEZ4mainE3$_0EEEEclB8ne180100EPS7_+0x38>
;   }
1000038f8: a9427bfd    	ldp	x29, x30, [sp, #0x20]
1000038fc: 9100c3ff    	add	sp, sp, #0x30
100003900: d65f03c0    	ret

0000000100003904 <__ZNSt3__122__compressed_pair_elemINS_14default_deleteINS_5tupleIJNS_10unique_ptrINS_15__thread_structENS1_IS4_EEEEZ4mainE3$_0EEEEELi1ELb1EE5__getB8ne180100Ev>:
;   _LIBCPP_HIDE_FROM_ABI _LIBCPP_CONSTEXPR_SINCE_CXX14 reference __get() _NOEXCEPT { return *this; }
100003904: d10043ff    	sub	sp, sp, #0x10
100003908: f90007e0    	str	x0, [sp, #0x8]
10000390c: f94007e0    	ldr	x0, [sp, #0x8]
100003910: 910043ff    	add	sp, sp, #0x10
100003914: d65f03c0    	ret

0000000100003918 <__ZNSt3__15tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS2_EEEEZ4mainE3$_0EED1Ev>:
; class _LIBCPP_TEMPLATE_VIS tuple {
100003918: d10083ff    	sub	sp, sp, #0x20
10000391c: a9017bfd    	stp	x29, x30, [sp, #0x10]
100003920: 910043fd    	add	x29, sp, #0x10
100003924: f90007e0    	str	x0, [sp, #0x8]
100003928: f94007e0    	ldr	x0, [sp, #0x8]
10000392c: f90003e0    	str	x0, [sp]
100003930: 94000005    	bl	0x100003944 <__ZNSt3__15tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS2_EEEEZ4mainE3$_0EED2Ev>
100003934: f94003e0    	ldr	x0, [sp]
100003938: a9417bfd    	ldp	x29, x30, [sp, #0x10]
10000393c: 910083ff    	add	sp, sp, #0x20
100003940: d65f03c0    	ret

0000000100003944 <__ZNSt3__15tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS2_EEEEZ4mainE3$_0EED2Ev>:
100003944: d10083ff    	sub	sp, sp, #0x20
100003948: a9017bfd    	stp	x29, x30, [sp, #0x10]
10000394c: 910043fd    	add	x29, sp, #0x10
100003950: f90007e0    	str	x0, [sp, #0x8]
100003954: f94007e0    	ldr	x0, [sp, #0x8]
100003958: f90003e0    	str	x0, [sp]
10000395c: 94000005    	bl	0x100003970 <__ZNSt3__112__tuple_implINS_15__tuple_indicesIJLm0ELm1EEEEJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS4_EEEEZ4mainE3$_0EED1Ev>
100003960: f94003e0    	ldr	x0, [sp]
100003964: a9417bfd    	ldp	x29, x30, [sp, #0x10]
100003968: 910083ff    	add	sp, sp, #0x20
10000396c: d65f03c0    	ret

0000000100003970 <__ZNSt3__112__tuple_implINS_15__tuple_indicesIJLm0ELm1EEEEJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS4_EEEEZ4mainE3$_0EED1Ev>:
; struct _LIBCPP_DECLSPEC_EMPTY_BASES __tuple_impl<__tuple_indices<_Indx...>, _Tp...>
100003970: d10083ff    	sub	sp, sp, #0x20
100003974: a9017bfd    	stp	x29, x30, [sp, #0x10]
100003978: 910043fd    	add	x29, sp, #0x10
10000397c: f90007e0    	str	x0, [sp, #0x8]
100003980: f94007e0    	ldr	x0, [sp, #0x8]
100003984: f90003e0    	str	x0, [sp]
100003988: 94000005    	bl	0x10000399c <__ZNSt3__112__tuple_implINS_15__tuple_indicesIJLm0ELm1EEEEJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS4_EEEEZ4mainE3$_0EED2Ev>
10000398c: f94003e0    	ldr	x0, [sp]
100003990: a9417bfd    	ldp	x29, x30, [sp, #0x10]
100003994: 910083ff    	add	sp, sp, #0x20
100003998: d65f03c0    	ret

000000010000399c <__ZNSt3__112__tuple_implINS_15__tuple_indicesIJLm0ELm1EEEEJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS4_EEEEZ4mainE3$_0EED2Ev>:
10000399c: d10083ff    	sub	sp, sp, #0x20
1000039a0: a9017bfd    	stp	x29, x30, [sp, #0x10]
1000039a4: 910043fd    	add	x29, sp, #0x10
1000039a8: f90007e0    	str	x0, [sp, #0x8]
1000039ac: f94007e0    	ldr	x0, [sp, #0x8]
1000039b0: f90003e0    	str	x0, [sp]
1000039b4: 94000005    	bl	0x1000039c8 <__ZNSt3__112__tuple_leafILm0ENS_10unique_ptrINS_15__thread_structENS_14default_deleteIS2_EEEELb0EED2Ev>
1000039b8: f94003e0    	ldr	x0, [sp]
1000039bc: a9417bfd    	ldp	x29, x30, [sp, #0x10]
1000039c0: 910083ff    	add	sp, sp, #0x20
1000039c4: d65f03c0    	ret

00000001000039c8 <__ZNSt3__112__tuple_leafILm0ENS_10unique_ptrINS_15__thread_structENS_14default_deleteIS2_EEEELb0EED2Ev>:
; class __tuple_leaf {
1000039c8: d10083ff    	sub	sp, sp, #0x20
1000039cc: a9017bfd    	stp	x29, x30, [sp, #0x10]
1000039d0: 910043fd    	add	x29, sp, #0x10
1000039d4: f90007e0    	str	x0, [sp, #0x8]
1000039d8: f94007e0    	ldr	x0, [sp, #0x8]
1000039dc: f90003e0    	str	x0, [sp]
1000039e0: 97fffa87    	bl	0x1000023fc <__ZNSt3__110unique_ptrINS_15__thread_structENS_14default_deleteIS1_EEED1B8ne180100Ev>
1000039e4: f94003e0    	ldr	x0, [sp]
1000039e8: a9417bfd    	ldp	x29, x30, [sp, #0x10]
1000039ec: 910083ff    	add	sp, sp, #0x20
1000039f0: d65f03c0    	ret

00000001000039f4 <__ZNSt3__110unique_ptrINS_15__thread_structENS_14default_deleteIS1_EEED2B8ne180100Ev>:
;   _LIBCPP_HIDE_FROM_ABI _LIBCPP_CONSTEXPR_SINCE_CXX23 ~unique_ptr() { reset(); }
1000039f4: d10083ff    	sub	sp, sp, #0x20
1000039f8: a9017bfd    	stp	x29, x30, [sp, #0x10]
1000039fc: 910043fd    	add	x29, sp, #0x10
100003a00: f90007e0    	str	x0, [sp, #0x8]
100003a04: f94007e0    	ldr	x0, [sp, #0x8]
100003a08: f90003e0    	str	x0, [sp]
100003a0c: d2800001    	mov	x1, #0x0                ; =0
100003a10: 94000005    	bl	0x100003a24 <__ZNSt3__110unique_ptrINS_15__thread_structENS_14default_deleteIS1_EEE5resetB8ne180100EPS1_>
100003a14: f94003e0    	ldr	x0, [sp]
100003a18: a9417bfd    	ldp	x29, x30, [sp, #0x10]
100003a1c: 910083ff    	add	sp, sp, #0x20
100003a20: d65f03c0    	ret

0000000100003a24 <__ZNSt3__110unique_ptrINS_15__thread_structENS_14default_deleteIS1_EEE5resetB8ne180100EPS1_>:
;   _LIBCPP_HIDE_FROM_ABI _LIBCPP_CONSTEXPR_SINCE_CXX23 void reset(pointer __p = pointer()) _NOEXCEPT {
100003a24: d10103ff    	sub	sp, sp, #0x40
100003a28: a9037bfd    	stp	x29, x30, [sp, #0x30]
100003a2c: 9100c3fd    	add	x29, sp, #0x30
100003a30: f81f83a0    	stur	x0, [x29, #-0x8]
100003a34: f81f03a1    	stur	x1, [x29, #-0x10]
100003a38: f85f83a0    	ldur	x0, [x29, #-0x8]
100003a3c: f90007e0    	str	x0, [sp, #0x8]
;     pointer __tmp  = __ptr_.first();
100003a40: 97fffb4c    	bl	0x100002770 <__ZNSt3__117__compressed_pairIPNS_15__thread_structENS_14default_deleteIS1_EEE5firstB8ne180100Ev>
100003a44: aa0003e8    	mov	x8, x0
100003a48: f94007e0    	ldr	x0, [sp, #0x8]
100003a4c: f9400108    	ldr	x8, [x8]
100003a50: f9000fe8    	str	x8, [sp, #0x18]
;     __ptr_.first() = __p;
100003a54: f85f03a8    	ldur	x8, [x29, #-0x10]
100003a58: f9000be8    	str	x8, [sp, #0x10]
100003a5c: 97fffb45    	bl	0x100002770 <__ZNSt3__117__compressed_pairIPNS_15__thread_structENS_14default_deleteIS1_EEE5firstB8ne180100Ev>
100003a60: f9400be8    	ldr	x8, [sp, #0x10]
100003a64: f9000008    	str	x8, [x0]
;     if (__tmp)
100003a68: f9400fe8    	ldr	x8, [sp, #0x18]
100003a6c: b40000e8    	cbz	x8, 0x100003a88 <__ZNSt3__110unique_ptrINS_15__thread_structENS_14default_deleteIS1_EEE5resetB8ne180100EPS1_+0x64>
100003a70: 14000001    	b	0x100003a74 <__ZNSt3__110unique_ptrINS_15__thread_structENS_14default_deleteIS1_EEE5resetB8ne180100EPS1_+0x50>
100003a74: f94007e0    	ldr	x0, [sp, #0x8]
;       __ptr_.second()(__tmp);
100003a78: 97fffb4c    	bl	0x1000027a8 <__ZNSt3__117__compressed_pairIPNS_15__thread_structENS_14default_deleteIS1_EEE6secondB8ne180100Ev>
100003a7c: f9400fe1    	ldr	x1, [sp, #0x18]
100003a80: 94000005    	bl	0x100003a94 <__ZNKSt3__114default_deleteINS_15__thread_structEEclB8ne180100EPS1_>
100003a84: 14000001    	b	0x100003a88 <__ZNSt3__110unique_ptrINS_15__thread_structENS_14default_deleteIS1_EEE5resetB8ne180100EPS1_+0x64>
;   }
100003a88: a9437bfd    	ldp	x29, x30, [sp, #0x30]
100003a8c: 910103ff    	add	sp, sp, #0x40
100003a90: d65f03c0    	ret

0000000100003a94 <__ZNKSt3__114default_deleteINS_15__thread_structEEclB8ne180100EPS1_>:
;   _LIBCPP_HIDE_FROM_ABI _LIBCPP_CONSTEXPR_SINCE_CXX23 void operator()(_Tp* __ptr) const _NOEXCEPT {
100003a94: d100c3ff    	sub	sp, sp, #0x30
100003a98: a9027bfd    	stp	x29, x30, [sp, #0x20]
100003a9c: 910083fd    	add	x29, sp, #0x20
100003aa0: f81f83a0    	stur	x0, [x29, #-0x8]
100003aa4: f9000be1    	str	x1, [sp, #0x10]
;     delete __ptr;
100003aa8: f9400be8    	ldr	x8, [sp, #0x10]
100003aac: f90007e8    	str	x8, [sp, #0x8]
100003ab0: b40000e8    	cbz	x8, 0x100003acc <__ZNKSt3__114default_deleteINS_15__thread_structEEclB8ne180100EPS1_+0x38>
100003ab4: 14000001    	b	0x100003ab8 <__ZNKSt3__114default_deleteINS_15__thread_structEEclB8ne180100EPS1_+0x24>
100003ab8: f94007e0    	ldr	x0, [sp, #0x8]
;     delete __ptr;
100003abc: 94000037    	bl	0x100003b98 <_strlen+0x100003b98>
100003ac0: f94007e0    	ldr	x0, [sp, #0x8]
100003ac4: 94000056    	bl	0x100003c1c <_strlen+0x100003c1c>
100003ac8: 14000001    	b	0x100003acc <__ZNKSt3__114default_deleteINS_15__thread_structEEclB8ne180100EPS1_+0x38>
;   }
100003acc: a9427bfd    	ldp	x29, x30, [sp, #0x20]
100003ad0: 9100c3ff    	add	sp, sp, #0x30
100003ad4: d65f03c0    	ret

Disassembly of section __TEXT,__stubs:

0000000100003ad8 <__stubs>:
100003ad8: b0000010    	adrp	x16, 0x100004000 <_strlen+0x100004000>
100003adc: f9400210    	ldr	x16, [x16]
100003ae0: d61f0200    	br	x16
100003ae4: b0000010    	adrp	x16, 0x100004000 <_strlen+0x100004000>
100003ae8: f9400610    	ldr	x16, [x16, #0x8]
100003aec: d61f0200    	br	x16
100003af0: b0000010    	adrp	x16, 0x100004000 <_strlen+0x100004000>
100003af4: f9400a10    	ldr	x16, [x16, #0x10]
100003af8: d61f0200    	br	x16
100003afc: b0000010    	adrp	x16, 0x100004000 <_strlen+0x100004000>
100003b00: f9400e10    	ldr	x16, [x16, #0x18]
100003b04: d61f0200    	br	x16
100003b08: b0000010    	adrp	x16, 0x100004000 <_strlen+0x100004000>
100003b0c: f9401210    	ldr	x16, [x16, #0x20]
100003b10: d61f0200    	br	x16
100003b14: b0000010    	adrp	x16, 0x100004000 <_strlen+0x100004000>
100003b18: f9401610    	ldr	x16, [x16, #0x28]
100003b1c: d61f0200    	br	x16
100003b20: b0000010    	adrp	x16, 0x100004000 <_strlen+0x100004000>
100003b24: f9401a10    	ldr	x16, [x16, #0x30]
100003b28: d61f0200    	br	x16
100003b2c: b0000010    	adrp	x16, 0x100004000 <_strlen+0x100004000>
100003b30: f9401e10    	ldr	x16, [x16, #0x38]
100003b34: d61f0200    	br	x16
100003b38: b0000010    	adrp	x16, 0x100004000 <_strlen+0x100004000>
100003b3c: f9402210    	ldr	x16, [x16, #0x40]
100003b40: d61f0200    	br	x16
100003b44: b0000010    	adrp	x16, 0x100004000 <_strlen+0x100004000>
100003b48: f9402610    	ldr	x16, [x16, #0x48]
100003b4c: d61f0200    	br	x16
100003b50: b0000010    	adrp	x16, 0x100004000 <_strlen+0x100004000>
100003b54: f9402a10    	ldr	x16, [x16, #0x50]
100003b58: d61f0200    	br	x16
100003b5c: b0000010    	adrp	x16, 0x100004000 <_strlen+0x100004000>
100003b60: f9402e10    	ldr	x16, [x16, #0x58]
100003b64: d61f0200    	br	x16
100003b68: b0000010    	adrp	x16, 0x100004000 <_strlen+0x100004000>
100003b6c: f9403210    	ldr	x16, [x16, #0x60]
100003b70: d61f0200    	br	x16
100003b74: b0000010    	adrp	x16, 0x100004000 <_strlen+0x100004000>
100003b78: f9403610    	ldr	x16, [x16, #0x68]
100003b7c: d61f0200    	br	x16
100003b80: b0000010    	adrp	x16, 0x100004000 <_strlen+0x100004000>
100003b84: f9403a10    	ldr	x16, [x16, #0x70]
100003b88: d61f0200    	br	x16
100003b8c: b0000010    	adrp	x16, 0x100004000 <_strlen+0x100004000>
100003b90: f9403e10    	ldr	x16, [x16, #0x78]
100003b94: d61f0200    	br	x16
100003b98: b0000010    	adrp	x16, 0x100004000 <_strlen+0x100004000>
100003b9c: f9404210    	ldr	x16, [x16, #0x80]
100003ba0: d61f0200    	br	x16
100003ba4: b0000010    	adrp	x16, 0x100004000 <_strlen+0x100004000>
100003ba8: f9404610    	ldr	x16, [x16, #0x88]
100003bac: d61f0200    	br	x16
100003bb0: b0000010    	adrp	x16, 0x100004000 <_strlen+0x100004000>
100003bb4: f9404a10    	ldr	x16, [x16, #0x90]
100003bb8: d61f0200    	br	x16
100003bbc: b0000010    	adrp	x16, 0x100004000 <_strlen+0x100004000>
100003bc0: f9404e10    	ldr	x16, [x16, #0x98]
100003bc4: d61f0200    	br	x16
100003bc8: b0000010    	adrp	x16, 0x100004000 <_strlen+0x100004000>
100003bcc: f9405610    	ldr	x16, [x16, #0xa8]
100003bd0: d61f0200    	br	x16
100003bd4: b0000010    	adrp	x16, 0x100004000 <_strlen+0x100004000>
100003bd8: f9405e10    	ldr	x16, [x16, #0xb8]
100003bdc: d61f0200    	br	x16
100003be0: b0000010    	adrp	x16, 0x100004000 <_strlen+0x100004000>
100003be4: f9406210    	ldr	x16, [x16, #0xc0]
100003be8: d61f0200    	br	x16
100003bec: b0000010    	adrp	x16, 0x100004000 <_strlen+0x100004000>
100003bf0: f9406610    	ldr	x16, [x16, #0xc8]
100003bf4: d61f0200    	br	x16
100003bf8: b0000010    	adrp	x16, 0x100004000 <_strlen+0x100004000>
100003bfc: f9406a10    	ldr	x16, [x16, #0xd0]
100003c00: d61f0200    	br	x16
100003c04: b0000010    	adrp	x16, 0x100004000 <_strlen+0x100004000>
100003c08: f9406e10    	ldr	x16, [x16, #0xd8]
100003c0c: d61f0200    	br	x16
100003c10: b0000010    	adrp	x16, 0x100004000 <_strlen+0x100004000>
100003c14: f9407210    	ldr	x16, [x16, #0xe0]
100003c18: d61f0200    	br	x16
100003c1c: b0000010    	adrp	x16, 0x100004000 <_strlen+0x100004000>
100003c20: f9407610    	ldr	x16, [x16, #0xe8]
100003c24: d61f0200    	br	x16
100003c28: b0000010    	adrp	x16, 0x100004000 <_strlen+0x100004000>
100003c2c: f9407a10    	ldr	x16, [x16, #0xf0]
100003c30: d61f0200    	br	x16
100003c34: b0000010    	adrp	x16, 0x100004000 <_strlen+0x100004000>
100003c38: f9407e10    	ldr	x16, [x16, #0xf8]
100003c3c: d61f0200    	br	x16
100003c40: b0000010    	adrp	x16, 0x100004000 <_strlen+0x100004000>
100003c44: f9408210    	ldr	x16, [x16, #0x100]
100003c48: d61f0200    	br	x16
100003c4c: b0000010    	adrp	x16, 0x100004000 <_strlen+0x100004000>
100003c50: f9408610    	ldr	x16, [x16, #0x108]
100003c54: d61f0200    	br	x16
100003c58: b0000010    	adrp	x16, 0x100004000 <_strlen+0x100004000>
100003c5c: f9408e10    	ldr	x16, [x16, #0x118]
100003c60: d61f0200    	br	x16
100003c64: b0000010    	adrp	x16, 0x100004000 <_strlen+0x100004000>
100003c68: f9409210    	ldr	x16, [x16, #0x120]
100003c6c: d61f0200    	br	x16
100003c70: b0000010    	adrp	x16, 0x100004000 <_strlen+0x100004000>
100003c74: f9409610    	ldr	x16, [x16, #0x128]
100003c78: d61f0200    	br	x16
100003c7c: b0000010    	adrp	x16, 0x100004000 <_strlen+0x100004000>
100003c80: f9409a10    	ldr	x16, [x16, #0x130]
100003c84: d61f0200    	br	x16
100003c88: b0000010    	adrp	x16, 0x100004000 <_strlen+0x100004000>
100003c8c: f9409e10    	ldr	x16, [x16, #0x138]
100003c90: d61f0200    	br	x16
100003c94: b0000010    	adrp	x16, 0x100004000 <_strlen+0x100004000>
100003c98: f940a210    	ldr	x16, [x16, #0x140]
100003c9c: d61f0200    	br	x16
