{
    files = {
        [[src\metapp\src\metarepo.cpp]]
    },
    values = {
        [[C:\Program Files\Microsoft Visual Studio\2022\Community\VC\Tools\MSVC\14.38.33130\bin\HostX64\x64\cl.exe]],
        {
            "-nologo",
            "-Zi",
            "-FS",
            [[-Fdbuild\windows\x64\debug\compile.EventSystem.pdb]],
            "-W4",
            "-Od",
            "-std:c++20",
            "/EHsc",
            "/utf-8",
            "-external:W0",
            [[-external:IC:\Users\HP\AppData\Local\.xmake\packages\r\raylib\4.5.0\bb0d541b26eb44b6b8e7d3d61afc9a54\include]],
            "-external:W0",
            [[-external:IC:\Users\HP\AppData\Local\.xmake\packages\l\lua\v5.4.6\59299296d76b4d759e413f446ececb01\include\lua]],
            "-external:W0",
            [[-external:IC:\Users\HP\AppData\Local\.xmake\packages\r\rttr\0.9.6\3a0b2dfdb03949b28773ccdbbd7dd04f\include]]
        }
    },
    depfiles_cl_json = "{\
    \"Version\": \"1.2\",\
    \"Data\": {\
        \"Source\": \"c:\\\\users\\\\hp\\\\desktop\\\\eventsystem\\\\event-system\\\\src\\\\metapp\\\\src\\\\metarepo.cpp\",\
        \"ProvidedModule\": \"\",\
        \"Includes\": [\
            \"c:\\\\users\\\\hp\\\\desktop\\\\eventsystem\\\\event-system\\\\src\\\\metapp\\\\src\\\\metapp\\\\metatype.h\",\
            \"c:\\\\users\\\\hp\\\\desktop\\\\eventsystem\\\\event-system\\\\src\\\\metapp\\\\src\\\\metapp\\\\compiler.h\",\
            \"c:\\\\users\\\\hp\\\\desktop\\\\eventsystem\\\\event-system\\\\src\\\\metapp\\\\src\\\\metapp\\\\typekind.h\",\
            \"c:\\\\program files\\\\microsoft visual studio\\\\2022\\\\community\\\\vc\\\\tools\\\\msvc\\\\14.38.33130\\\\include\\\\cstdint\",\
            \"c:\\\\program files\\\\microsoft visual studio\\\\2022\\\\community\\\\vc\\\\tools\\\\msvc\\\\14.38.33130\\\\include\\\\yvals_core.h\",\
            \"c:\\\\program files\\\\microsoft visual studio\\\\2022\\\\community\\\\vc\\\\tools\\\\msvc\\\\14.38.33130\\\\include\\\\vcruntime.h\",\
            \"c:\\\\program files\\\\microsoft visual studio\\\\2022\\\\community\\\\vc\\\\tools\\\\msvc\\\\14.38.33130\\\\include\\\\sal.h\",\
            \"c:\\\\program files\\\\microsoft visual studio\\\\2022\\\\community\\\\vc\\\\tools\\\\msvc\\\\14.38.33130\\\\include\\\\concurrencysal.h\",\
            \"c:\\\\program files\\\\microsoft visual studio\\\\2022\\\\community\\\\vc\\\\tools\\\\msvc\\\\14.38.33130\\\\include\\\\vadefs.h\",\
            \"c:\\\\program files\\\\microsoft visual studio\\\\2022\\\\community\\\\vc\\\\tools\\\\msvc\\\\14.38.33130\\\\include\\\\xkeycheck.h\",\
            \"c:\\\\program files\\\\microsoft visual studio\\\\2022\\\\community\\\\vc\\\\tools\\\\msvc\\\\14.38.33130\\\\include\\\\stdint.h\",\
            \"c:\\\\program files\\\\microsoft visual studio\\\\2022\\\\community\\\\vc\\\\tools\\\\msvc\\\\14.38.33130\\\\include\\\\map\",\
            \"c:\\\\program files\\\\microsoft visual studio\\\\2022\\\\community\\\\vc\\\\tools\\\\msvc\\\\14.38.33130\\\\include\\\\tuple\",\
            \"c:\\\\program files\\\\microsoft visual studio\\\\2022\\\\community\\\\vc\\\\tools\\\\msvc\\\\14.38.33130\\\\include\\\\compare\",\
            \"c:\\\\program files\\\\microsoft visual studio\\\\2022\\\\community\\\\vc\\\\tools\\\\msvc\\\\14.38.33130\\\\include\\\\concepts\",\
            \"c:\\\\program files\\\\microsoft visual studio\\\\2022\\\\community\\\\vc\\\\tools\\\\msvc\\\\14.38.33130\\\\include\\\\type_traits\",\
            \"c:\\\\program files\\\\microsoft visual studio\\\\2022\\\\community\\\\vc\\\\tools\\\\msvc\\\\14.38.33130\\\\include\\\\cstddef\",\
            \"c:\\\\program files (x86)\\\\windows kits\\\\10\\\\include\\\\10.0.22621.0\\\\ucrt\\\\stddef.h\",\
            \"c:\\\\program files (x86)\\\\windows kits\\\\10\\\\include\\\\10.0.22621.0\\\\ucrt\\\\corecrt.h\",\
            \"c:\\\\program files\\\\microsoft visual studio\\\\2022\\\\community\\\\vc\\\\tools\\\\msvc\\\\14.38.33130\\\\include\\\\xtr1common\",\
            \"c:\\\\program files\\\\microsoft visual studio\\\\2022\\\\community\\\\vc\\\\tools\\\\msvc\\\\14.38.33130\\\\include\\\\vcruntime_new.h\",\
            \"c:\\\\program files\\\\microsoft visual studio\\\\2022\\\\community\\\\vc\\\\tools\\\\msvc\\\\14.38.33130\\\\include\\\\__msvc_iter_core.hpp\",\
            \"c:\\\\program files\\\\microsoft visual studio\\\\2022\\\\community\\\\vc\\\\tools\\\\msvc\\\\14.38.33130\\\\include\\\\utility\",\
            \"c:\\\\program files\\\\microsoft visual studio\\\\2022\\\\community\\\\vc\\\\tools\\\\msvc\\\\14.38.33130\\\\include\\\\initializer_list\",\
            \"c:\\\\program files\\\\microsoft visual studio\\\\2022\\\\community\\\\vc\\\\tools\\\\msvc\\\\14.38.33130\\\\include\\\\xtree\",\
            \"c:\\\\program files\\\\microsoft visual studio\\\\2022\\\\community\\\\vc\\\\tools\\\\msvc\\\\14.38.33130\\\\include\\\\xmemory\",\
            \"c:\\\\program files\\\\microsoft visual studio\\\\2022\\\\community\\\\vc\\\\tools\\\\msvc\\\\14.38.33130\\\\include\\\\cstdlib\",\
            \"c:\\\\program files (x86)\\\\windows kits\\\\10\\\\include\\\\10.0.22621.0\\\\ucrt\\\\math.h\",\
            \"c:\\\\program files (x86)\\\\windows kits\\\\10\\\\include\\\\10.0.22621.0\\\\ucrt\\\\corecrt_math.h\",\
            \"c:\\\\program files (x86)\\\\windows kits\\\\10\\\\include\\\\10.0.22621.0\\\\ucrt\\\\stdlib.h\",\
            \"c:\\\\program files (x86)\\\\windows kits\\\\10\\\\include\\\\10.0.22621.0\\\\ucrt\\\\corecrt_malloc.h\",\
            \"c:\\\\program files (x86)\\\\windows kits\\\\10\\\\include\\\\10.0.22621.0\\\\ucrt\\\\corecrt_search.h\",\
            \"c:\\\\program files (x86)\\\\windows kits\\\\10\\\\include\\\\10.0.22621.0\\\\ucrt\\\\corecrt_wstdlib.h\",\
            \"c:\\\\program files\\\\microsoft visual studio\\\\2022\\\\community\\\\vc\\\\tools\\\\msvc\\\\14.38.33130\\\\include\\\\limits.h\",\
            \"c:\\\\program files\\\\microsoft visual studio\\\\2022\\\\community\\\\vc\\\\tools\\\\msvc\\\\14.38.33130\\\\include\\\\limits\",\
            \"c:\\\\program files\\\\microsoft visual studio\\\\2022\\\\community\\\\vc\\\\tools\\\\msvc\\\\14.38.33130\\\\include\\\\cfloat\",\
            \"c:\\\\program files (x86)\\\\windows kits\\\\10\\\\include\\\\10.0.22621.0\\\\ucrt\\\\float.h\",\
            \"c:\\\\program files\\\\microsoft visual studio\\\\2022\\\\community\\\\vc\\\\tools\\\\msvc\\\\14.38.33130\\\\include\\\\climits\",\
            \"c:\\\\program files\\\\microsoft visual studio\\\\2022\\\\community\\\\vc\\\\tools\\\\msvc\\\\14.38.33130\\\\include\\\\cwchar\",\
            \"c:\\\\program files\\\\microsoft visual studio\\\\2022\\\\community\\\\vc\\\\tools\\\\msvc\\\\14.38.33130\\\\include\\\\cstdio\",\
            \"c:\\\\program files (x86)\\\\windows kits\\\\10\\\\include\\\\10.0.22621.0\\\\ucrt\\\\stdio.h\",\
            \"c:\\\\program files (x86)\\\\windows kits\\\\10\\\\include\\\\10.0.22621.0\\\\ucrt\\\\corecrt_wstdio.h\",\
            \"c:\\\\program files (x86)\\\\windows kits\\\\10\\\\include\\\\10.0.22621.0\\\\ucrt\\\\corecrt_stdio_config.h\",\
            \"c:\\\\program files (x86)\\\\windows kits\\\\10\\\\include\\\\10.0.22621.0\\\\ucrt\\\\wchar.h\",\
            \"c:\\\\program files (x86)\\\\windows kits\\\\10\\\\include\\\\10.0.22621.0\\\\ucrt\\\\corecrt_memcpy_s.h\",\
            \"c:\\\\program files (x86)\\\\windows kits\\\\10\\\\include\\\\10.0.22621.0\\\\ucrt\\\\errno.h\",\
            \"c:\\\\program files\\\\microsoft visual studio\\\\2022\\\\community\\\\vc\\\\tools\\\\msvc\\\\14.38.33130\\\\include\\\\vcruntime_string.h\",\
            \"c:\\\\program files (x86)\\\\windows kits\\\\10\\\\include\\\\10.0.22621.0\\\\ucrt\\\\corecrt_wconio.h\",\
            \"c:\\\\program files (x86)\\\\windows kits\\\\10\\\\include\\\\10.0.22621.0\\\\ucrt\\\\corecrt_wctype.h\",\
            \"c:\\\\program files (x86)\\\\windows kits\\\\10\\\\include\\\\10.0.22621.0\\\\ucrt\\\\corecrt_wdirect.h\",\
            \"c:\\\\program files (x86)\\\\windows kits\\\\10\\\\include\\\\10.0.22621.0\\\\ucrt\\\\corecrt_wio.h\",\
            \"c:\\\\program files (x86)\\\\windows kits\\\\10\\\\include\\\\10.0.22621.0\\\\ucrt\\\\corecrt_share.h\",\
            \"c:\\\\program files (x86)\\\\windows kits\\\\10\\\\include\\\\10.0.22621.0\\\\ucrt\\\\corecrt_wprocess.h\",\
            \"c:\\\\program files (x86)\\\\windows kits\\\\10\\\\include\\\\10.0.22621.0\\\\ucrt\\\\corecrt_wstring.h\",\
            \"c:\\\\program files (x86)\\\\windows kits\\\\10\\\\include\\\\10.0.22621.0\\\\ucrt\\\\corecrt_wtime.h\",\
            \"c:\\\\program files (x86)\\\\windows kits\\\\10\\\\include\\\\10.0.22621.0\\\\ucrt\\\\sys\\\\stat.h\",\
            \"c:\\\\program files (x86)\\\\windows kits\\\\10\\\\include\\\\10.0.22621.0\\\\ucrt\\\\sys\\\\types.h\",\
            \"c:\\\\program files\\\\microsoft visual studio\\\\2022\\\\community\\\\vc\\\\tools\\\\msvc\\\\14.38.33130\\\\include\\\\intrin0.h\",\
            \"c:\\\\program files\\\\microsoft visual studio\\\\2022\\\\community\\\\vc\\\\tools\\\\msvc\\\\14.38.33130\\\\include\\\\intrin0.inl.h\",\
            \"c:\\\\program files\\\\microsoft visual studio\\\\2022\\\\community\\\\vc\\\\tools\\\\msvc\\\\14.38.33130\\\\include\\\\new\",\
            \"c:\\\\program files\\\\microsoft visual studio\\\\2022\\\\community\\\\vc\\\\tools\\\\msvc\\\\14.38.33130\\\\include\\\\exception\",\
            \"c:\\\\program files\\\\microsoft visual studio\\\\2022\\\\community\\\\vc\\\\tools\\\\msvc\\\\14.38.33130\\\\include\\\\yvals.h\",\
            \"c:\\\\program files (x86)\\\\windows kits\\\\10\\\\include\\\\10.0.22621.0\\\\ucrt\\\\crtdbg.h\",\
            \"c:\\\\program files\\\\microsoft visual studio\\\\2022\\\\community\\\\vc\\\\tools\\\\msvc\\\\14.38.33130\\\\include\\\\vcruntime_new_debug.h\",\
            \"c:\\\\program files\\\\microsoft visual studio\\\\2022\\\\community\\\\vc\\\\tools\\\\msvc\\\\14.38.33130\\\\include\\\\crtdefs.h\",\
            \"c:\\\\program files\\\\microsoft visual studio\\\\2022\\\\community\\\\vc\\\\tools\\\\msvc\\\\14.38.33130\\\\include\\\\use_ansi.h\",\
            \"c:\\\\program files (x86)\\\\windows kits\\\\10\\\\include\\\\10.0.22621.0\\\\ucrt\\\\malloc.h\",\
            \"c:\\\\program files\\\\microsoft visual studio\\\\2022\\\\community\\\\vc\\\\tools\\\\msvc\\\\14.38.33130\\\\include\\\\vcruntime_exception.h\",\
            \"c:\\\\program files\\\\microsoft visual studio\\\\2022\\\\community\\\\vc\\\\tools\\\\msvc\\\\14.38.33130\\\\include\\\\eh.h\",\
            \"c:\\\\program files (x86)\\\\windows kits\\\\10\\\\include\\\\10.0.22621.0\\\\ucrt\\\\corecrt_terminate.h\",\
            \"c:\\\\program files\\\\microsoft visual studio\\\\2022\\\\community\\\\vc\\\\tools\\\\msvc\\\\14.38.33130\\\\include\\\\xatomic.h\",\
            \"c:\\\\program files\\\\microsoft visual studio\\\\2022\\\\community\\\\vc\\\\tools\\\\msvc\\\\14.38.33130\\\\include\\\\xutility\",\
            \"c:\\\\program files\\\\microsoft visual studio\\\\2022\\\\community\\\\vc\\\\tools\\\\msvc\\\\14.38.33130\\\\include\\\\cstring\",\
            \"c:\\\\program files (x86)\\\\windows kits\\\\10\\\\include\\\\10.0.22621.0\\\\ucrt\\\\string.h\",\
            \"c:\\\\program files (x86)\\\\windows kits\\\\10\\\\include\\\\10.0.22621.0\\\\ucrt\\\\corecrt_memory.h\",\
            \"c:\\\\program files\\\\microsoft visual studio\\\\2022\\\\community\\\\vc\\\\tools\\\\msvc\\\\14.38.33130\\\\include\\\\xnode_handle.h\",\
            \"c:\\\\program files\\\\microsoft visual studio\\\\2022\\\\community\\\\vc\\\\tools\\\\msvc\\\\14.38.33130\\\\include\\\\xpolymorphic_allocator.h\",\
            \"c:\\\\program files\\\\microsoft visual studio\\\\2022\\\\community\\\\vc\\\\tools\\\\msvc\\\\14.38.33130\\\\include\\\\string\",\
            \"c:\\\\program files\\\\microsoft visual studio\\\\2022\\\\community\\\\vc\\\\tools\\\\msvc\\\\14.38.33130\\\\include\\\\xstring\",\
            \"c:\\\\program files\\\\microsoft visual studio\\\\2022\\\\community\\\\vc\\\\tools\\\\msvc\\\\14.38.33130\\\\include\\\\__msvc_sanitizer_annotate_container.hpp\",\
            \"c:\\\\program files\\\\microsoft visual studio\\\\2022\\\\community\\\\vc\\\\tools\\\\msvc\\\\14.38.33130\\\\include\\\\iosfwd\",\
            \"c:\\\\program files\\\\microsoft visual studio\\\\2022\\\\community\\\\vc\\\\tools\\\\msvc\\\\14.38.33130\\\\include\\\\cctype\",\
            \"c:\\\\program files (x86)\\\\windows kits\\\\10\\\\include\\\\10.0.22621.0\\\\ucrt\\\\ctype.h\",\
            \"c:\\\\users\\\\hp\\\\desktop\\\\eventsystem\\\\event-system\\\\src\\\\metapp\\\\src\\\\metapp\\\\variantdata.h\",\
            \"c:\\\\users\\\\hp\\\\desktop\\\\eventsystem\\\\event-system\\\\src\\\\metapp\\\\src\\\\metapp\\\\exception.h\",\
            \"c:\\\\program files\\\\microsoft visual studio\\\\2022\\\\community\\\\vc\\\\tools\\\\msvc\\\\14.38.33130\\\\include\\\\stdexcept\",\
            \"c:\\\\users\\\\hp\\\\desktop\\\\eventsystem\\\\event-system\\\\src\\\\metapp\\\\src\\\\metapp\\\\implement\\\\internal\\\\typeutil_i.h\",\
            \"c:\\\\users\\\\hp\\\\desktop\\\\eventsystem\\\\event-system\\\\src\\\\metapp\\\\src\\\\metapp\\\\utilities\\\\typelist.h\",\
            \"c:\\\\program files\\\\microsoft visual studio\\\\2022\\\\community\\\\vc\\\\tools\\\\msvc\\\\14.38.33130\\\\include\\\\istream\",\
            \"c:\\\\program files\\\\microsoft visual studio\\\\2022\\\\community\\\\vc\\\\tools\\\\msvc\\\\14.38.33130\\\\include\\\\ostream\",\
            \"c:\\\\program files\\\\microsoft visual studio\\\\2022\\\\community\\\\vc\\\\tools\\\\msvc\\\\14.38.33130\\\\include\\\\ios\",\
            \"c:\\\\program files\\\\microsoft visual studio\\\\2022\\\\community\\\\vc\\\\tools\\\\msvc\\\\14.38.33130\\\\include\\\\xlocnum\",\
            \"c:\\\\program files\\\\microsoft visual studio\\\\2022\\\\community\\\\vc\\\\tools\\\\msvc\\\\14.38.33130\\\\include\\\\cmath\",\
            \"c:\\\\program files\\\\microsoft visual studio\\\\2022\\\\community\\\\vc\\\\tools\\\\msvc\\\\14.38.33130\\\\include\\\\iterator\",\
            \"c:\\\\program files\\\\microsoft visual studio\\\\2022\\\\community\\\\vc\\\\tools\\\\msvc\\\\14.38.33130\\\\include\\\\streambuf\",\
            \"c:\\\\program files\\\\microsoft visual studio\\\\2022\\\\community\\\\vc\\\\tools\\\\msvc\\\\14.38.33130\\\\include\\\\xiosbase\",\
            \"c:\\\\program files (x86)\\\\windows kits\\\\10\\\\include\\\\10.0.22621.0\\\\ucrt\\\\share.h\",\
            \"c:\\\\program files\\\\microsoft visual studio\\\\2022\\\\community\\\\vc\\\\tools\\\\msvc\\\\14.38.33130\\\\include\\\\system_error\",\
            \"c:\\\\program files\\\\microsoft visual studio\\\\2022\\\\community\\\\vc\\\\tools\\\\msvc\\\\14.38.33130\\\\include\\\\__msvc_system_error_abi.hpp\",\
            \"c:\\\\program files\\\\microsoft visual studio\\\\2022\\\\community\\\\vc\\\\tools\\\\msvc\\\\14.38.33130\\\\include\\\\cerrno\",\
            \"c:\\\\program files\\\\microsoft visual studio\\\\2022\\\\community\\\\vc\\\\tools\\\\msvc\\\\14.38.33130\\\\include\\\\xcall_once.h\",\
            \"c:\\\\program files\\\\microsoft visual studio\\\\2022\\\\community\\\\vc\\\\tools\\\\msvc\\\\14.38.33130\\\\include\\\\xerrc.h\",\
            \"c:\\\\program files\\\\microsoft visual studio\\\\2022\\\\community\\\\vc\\\\tools\\\\msvc\\\\14.38.33130\\\\include\\\\atomic\",\
            \"c:\\\\program files\\\\microsoft visual studio\\\\2022\\\\community\\\\vc\\\\tools\\\\msvc\\\\14.38.33130\\\\include\\\\xatomic_wait.h\",\
            \"c:\\\\program files\\\\microsoft visual studio\\\\2022\\\\community\\\\vc\\\\tools\\\\msvc\\\\14.38.33130\\\\include\\\\xthreads.h\",\
            \"c:\\\\program files\\\\microsoft visual studio\\\\2022\\\\community\\\\vc\\\\tools\\\\msvc\\\\14.38.33130\\\\include\\\\xtimec.h\",\
            \"c:\\\\program files\\\\microsoft visual studio\\\\2022\\\\community\\\\vc\\\\tools\\\\msvc\\\\14.38.33130\\\\include\\\\ctime\",\
            \"c:\\\\program files (x86)\\\\windows kits\\\\10\\\\include\\\\10.0.22621.0\\\\ucrt\\\\time.h\",\
            \"c:\\\\program files\\\\microsoft visual studio\\\\2022\\\\community\\\\vc\\\\tools\\\\msvc\\\\14.38.33130\\\\include\\\\xlocale\",\
            \"c:\\\\program files\\\\microsoft visual studio\\\\2022\\\\community\\\\vc\\\\tools\\\\msvc\\\\14.38.33130\\\\include\\\\memory\",\
            \"c:\\\\program files\\\\microsoft visual studio\\\\2022\\\\community\\\\vc\\\\tools\\\\msvc\\\\14.38.33130\\\\include\\\\typeinfo\",\
            \"c:\\\\program files\\\\microsoft visual studio\\\\2022\\\\community\\\\vc\\\\tools\\\\msvc\\\\14.38.33130\\\\include\\\\vcruntime_typeinfo.h\",\
            \"c:\\\\program files\\\\microsoft visual studio\\\\2022\\\\community\\\\vc\\\\tools\\\\msvc\\\\14.38.33130\\\\include\\\\xfacet\",\
            \"c:\\\\program files\\\\microsoft visual studio\\\\2022\\\\community\\\\vc\\\\tools\\\\msvc\\\\14.38.33130\\\\include\\\\xlocinfo\",\
            \"c:\\\\program files\\\\microsoft visual studio\\\\2022\\\\community\\\\vc\\\\tools\\\\msvc\\\\14.38.33130\\\\include\\\\__msvc_xlocinfo_types.hpp\",\
            \"c:\\\\program files\\\\microsoft visual studio\\\\2022\\\\community\\\\vc\\\\tools\\\\msvc\\\\14.38.33130\\\\include\\\\clocale\",\
            \"c:\\\\program files (x86)\\\\windows kits\\\\10\\\\include\\\\10.0.22621.0\\\\ucrt\\\\locale.h\",\
            \"c:\\\\users\\\\hp\\\\desktop\\\\eventsystem\\\\event-system\\\\src\\\\metapp\\\\src\\\\metapp\\\\implement\\\\internal\\\\construct_i.h\",\
            \"c:\\\\program files\\\\microsoft visual studio\\\\2022\\\\community\\\\vc\\\\tools\\\\msvc\\\\14.38.33130\\\\include\\\\array\",\
            \"c:\\\\users\\\\hp\\\\desktop\\\\eventsystem\\\\event-system\\\\src\\\\metapp\\\\src\\\\metapp\\\\implement\\\\variant_intf.h\",\
            \"c:\\\\program files\\\\microsoft visual studio\\\\2022\\\\community\\\\vc\\\\tools\\\\msvc\\\\14.38.33130\\\\include\\\\cassert\",\
            \"c:\\\\program files (x86)\\\\windows kits\\\\10\\\\include\\\\10.0.22621.0\\\\ucrt\\\\assert.h\",\
            \"c:\\\\users\\\\hp\\\\desktop\\\\eventsystem\\\\event-system\\\\src\\\\metapp\\\\src\\\\metapp\\\\implement\\\\internal\\\\metatype_i.h\",\
            \"c:\\\\users\\\\hp\\\\desktop\\\\eventsystem\\\\event-system\\\\src\\\\metapp\\\\src\\\\metapp\\\\implement\\\\metatype_impl.h\",\
            \"c:\\\\users\\\\hp\\\\desktop\\\\eventsystem\\\\event-system\\\\src\\\\metapp\\\\src\\\\metapp\\\\implement\\\\variant_impl.h\",\
            \"c:\\\\users\\\\hp\\\\desktop\\\\eventsystem\\\\event-system\\\\src\\\\metapp\\\\src\\\\metapp\\\\metarepo.h\",\
            \"c:\\\\users\\\\hp\\\\desktop\\\\eventsystem\\\\event-system\\\\src\\\\metapp\\\\src\\\\metapp\\\\metaitem.h\",\
            \"c:\\\\users\\\\hp\\\\desktop\\\\eventsystem\\\\event-system\\\\src\\\\metapp\\\\src\\\\metapp\\\\variant.h\",\
            \"c:\\\\users\\\\hp\\\\desktop\\\\eventsystem\\\\event-system\\\\src\\\\metapp\\\\src\\\\metapp\\\\implement\\\\internal\\\\metarepobase_i.h\",\
            \"c:\\\\users\\\\hp\\\\desktop\\\\eventsystem\\\\event-system\\\\src\\\\metapp\\\\src\\\\metapp\\\\implement\\\\internal\\\\util_i.h\",\
            \"c:\\\\users\\\\hp\\\\desktop\\\\eventsystem\\\\event-system\\\\src\\\\metapp\\\\src\\\\metapp\\\\implement\\\\internal\\\\disjointview_i.h\",\
            \"c:\\\\program files\\\\microsoft visual studio\\\\2022\\\\community\\\\vc\\\\tools\\\\msvc\\\\14.38.33130\\\\include\\\\vector\",\
            \"c:\\\\program files\\\\microsoft visual studio\\\\2022\\\\community\\\\vc\\\\tools\\\\msvc\\\\14.38.33130\\\\include\\\\__msvc_bit_utils.hpp\",\
            \"c:\\\\program files\\\\microsoft visual studio\\\\2022\\\\community\\\\vc\\\\tools\\\\msvc\\\\14.38.33130\\\\include\\\\deque\",\
            \"c:\\\\program files\\\\microsoft visual studio\\\\2022\\\\community\\\\vc\\\\tools\\\\msvc\\\\14.38.33130\\\\include\\\\functional\",\
            \"c:\\\\program files\\\\microsoft visual studio\\\\2022\\\\community\\\\vc\\\\tools\\\\msvc\\\\14.38.33130\\\\include\\\\unordered_map\",\
            \"c:\\\\program files\\\\microsoft visual studio\\\\2022\\\\community\\\\vc\\\\tools\\\\msvc\\\\14.38.33130\\\\include\\\\xhash\",\
            \"c:\\\\program files\\\\microsoft visual studio\\\\2022\\\\community\\\\vc\\\\tools\\\\msvc\\\\14.38.33130\\\\include\\\\list\",\
            \"c:\\\\program files\\\\microsoft visual studio\\\\2022\\\\community\\\\vc\\\\tools\\\\msvc\\\\14.38.33130\\\\include\\\\xbit_ops.h\",\
            \"c:\\\\users\\\\hp\\\\desktop\\\\eventsystem\\\\event-system\\\\src\\\\metapp\\\\src\\\\metapp\\\\implement\\\\internal\\\\inheritancerepo_i.h\",\
            \"c:\\\\program files\\\\microsoft visual studio\\\\2022\\\\community\\\\vc\\\\tools\\\\msvc\\\\14.38.33130\\\\include\\\\set\",\
            \"c:\\\\program files\\\\microsoft visual studio\\\\2022\\\\community\\\\vc\\\\tools\\\\msvc\\\\14.38.33130\\\\include\\\\algorithm\",\
            \"c:\\\\users\\\\hp\\\\desktop\\\\eventsystem\\\\event-system\\\\src\\\\metapp\\\\src\\\\metapp\\\\allmetatypes.h\",\
            \"c:\\\\users\\\\hp\\\\desktop\\\\eventsystem\\\\event-system\\\\src\\\\metapp\\\\src\\\\metapp\\\\metatypes\\\\accessor.h\",\
            \"c:\\\\users\\\\hp\\\\desktop\\\\eventsystem\\\\event-system\\\\src\\\\metapp\\\\src\\\\metapp\\\\interfaces\\\\metaaccessible.h\",\
            \"c:\\\\users\\\\hp\\\\desktop\\\\eventsystem\\\\event-system\\\\src\\\\metapp\\\\src\\\\metapp\\\\utilities\\\\utility.h\",\
            \"c:\\\\users\\\\hp\\\\desktop\\\\eventsystem\\\\event-system\\\\src\\\\metapp\\\\src\\\\metapp\\\\thirdparty\\\\accessorpp\\\\accessor.h\",\
            \"c:\\\\users\\\\hp\\\\desktop\\\\eventsystem\\\\event-system\\\\src\\\\metapp\\\\src\\\\metapp\\\\thirdparty\\\\accessorpp\\\\getter.h\",\
            \"c:\\\\users\\\\hp\\\\desktop\\\\eventsystem\\\\event-system\\\\src\\\\metapp\\\\src\\\\metapp\\\\thirdparty\\\\accessorpp\\\\internal\\\\typeutil_i.h\",\
            \"c:\\\\users\\\\hp\\\\desktop\\\\eventsystem\\\\event-system\\\\src\\\\metapp\\\\src\\\\metapp\\\\thirdparty\\\\accessorpp\\\\compiler.h\",\
            \"c:\\\\users\\\\hp\\\\desktop\\\\eventsystem\\\\event-system\\\\src\\\\metapp\\\\src\\\\metapp\\\\thirdparty\\\\accessorpp\\\\common.h\",\
            \"c:\\\\users\\\\hp\\\\desktop\\\\eventsystem\\\\event-system\\\\src\\\\metapp\\\\src\\\\metapp\\\\thirdparty\\\\accessorpp\\\\setter.h\",\
            \"c:\\\\program files\\\\microsoft visual studio\\\\2022\\\\community\\\\vc\\\\tools\\\\msvc\\\\14.38.33130\\\\include\\\\iostream\",\
            \"c:\\\\users\\\\hp\\\\desktop\\\\eventsystem\\\\event-system\\\\src\\\\metapp\\\\src\\\\metapp\\\\thirdparty\\\\accessorpp\\\\internal\\\\accessor_i.h\",\
            \"c:\\\\users\\\\hp\\\\desktop\\\\eventsystem\\\\event-system\\\\src\\\\metapp\\\\src\\\\metapp\\\\metatypes\\\\arithmetic.h\",\
            \"c:\\\\users\\\\hp\\\\desktop\\\\eventsystem\\\\event-system\\\\src\\\\metapp\\\\src\\\\metapp\\\\implement\\\\internal\\\\knowntypes_i.h\",\
            \"c:\\\\program files\\\\microsoft visual studio\\\\2022\\\\community\\\\vc\\\\tools\\\\msvc\\\\14.38.33130\\\\include\\\\any\",\
            \"c:\\\\users\\\\hp\\\\desktop\\\\eventsystem\\\\event-system\\\\src\\\\metapp\\\\src\\\\metapp\\\\interfaces\\\\bases\\\\metastreamablebase.h\",\
            \"c:\\\\users\\\\hp\\\\desktop\\\\eventsystem\\\\event-system\\\\src\\\\metapp\\\\src\\\\metapp\\\\interfaces\\\\metastreamable.h\",\
            \"c:\\\\users\\\\hp\\\\desktop\\\\eventsystem\\\\event-system\\\\src\\\\metapp\\\\src\\\\metapp\\\\cast.h\",\
            \"c:\\\\users\\\\hp\\\\desktop\\\\eventsystem\\\\event-system\\\\src\\\\metapp\\\\src\\\\metapp\\\\metatypes\\\\array.h\",\
            \"c:\\\\users\\\\hp\\\\desktop\\\\eventsystem\\\\event-system\\\\src\\\\metapp\\\\src\\\\metapp\\\\interfaces\\\\metaindexable.h\",\
            \"c:\\\\users\\\\hp\\\\desktop\\\\eventsystem\\\\event-system\\\\src\\\\metapp\\\\src\\\\metapp\\\\metatypes\\\\std_string.h\",\
            \"c:\\\\users\\\\hp\\\\desktop\\\\eventsystem\\\\event-system\\\\src\\\\metapp\\\\src\\\\metapp\\\\metatypes\\\\constructor.h\",\
            \"c:\\\\users\\\\hp\\\\desktop\\\\eventsystem\\\\event-system\\\\src\\\\metapp\\\\src\\\\metapp\\\\interfaces\\\\bases\\\\metacallablebase.h\",\
            \"c:\\\\users\\\\hp\\\\desktop\\\\eventsystem\\\\event-system\\\\src\\\\metapp\\\\src\\\\metapp\\\\interfaces\\\\metacallable.h\",\
            \"c:\\\\users\\\\hp\\\\desktop\\\\eventsystem\\\\event-system\\\\src\\\\metapp\\\\src\\\\metapp\\\\utilities\\\\span.h\",\
            \"c:\\\\program files\\\\microsoft visual studio\\\\2022\\\\community\\\\vc\\\\tools\\\\msvc\\\\14.38.33130\\\\include\\\\span\",\
            \"c:\\\\users\\\\hp\\\\desktop\\\\eventsystem\\\\event-system\\\\src\\\\metapp\\\\src\\\\metapp\\\\implement\\\\internal\\\\declareutil_i.h\",\
            \"c:\\\\program files\\\\microsoft visual studio\\\\2022\\\\community\\\\vc\\\\tools\\\\msvc\\\\14.38.33130\\\\include\\\\numeric\",\
            \"c:\\\\users\\\\hp\\\\desktop\\\\eventsystem\\\\event-system\\\\src\\\\metapp\\\\src\\\\metapp\\\\metatypes\\\\cv.h\",\
            \"c:\\\\users\\\\hp\\\\desktop\\\\eventsystem\\\\event-system\\\\src\\\\metapp\\\\src\\\\metapp\\\\metatypes\\\\default_args_function.h\",\
            \"c:\\\\users\\\\hp\\\\desktop\\\\eventsystem\\\\event-system\\\\src\\\\metapp\\\\src\\\\metapp\\\\metatypes\\\\function.h\",\
            \"c:\\\\users\\\\hp\\\\desktop\\\\eventsystem\\\\event-system\\\\src\\\\metapp\\\\src\\\\metapp\\\\metatypes\\\\member_function.h\",\
            \"c:\\\\users\\\\hp\\\\desktop\\\\eventsystem\\\\event-system\\\\src\\\\metapp\\\\src\\\\metapp\\\\metatypes\\\\std_function.h\",\
            \"c:\\\\users\\\\hp\\\\desktop\\\\eventsystem\\\\event-system\\\\src\\\\metapp\\\\src\\\\metapp\\\\metatypes\\\\enum.h\",\
            \"c:\\\\users\\\\hp\\\\desktop\\\\eventsystem\\\\event-system\\\\src\\\\metapp\\\\src\\\\metapp\\\\interfaces\\\\metaenum.h\",\
            \"c:\\\\users\\\\hp\\\\desktop\\\\eventsystem\\\\event-system\\\\src\\\\metapp\\\\src\\\\metapp\\\\metatypes\\\\member_data.h\",\
            \"c:\\\\users\\\\hp\\\\desktop\\\\eventsystem\\\\event-system\\\\src\\\\metapp\\\\src\\\\metapp\\\\metatypes\\\\metatype_metatype.h\",\
            \"c:\\\\users\\\\hp\\\\desktop\\\\eventsystem\\\\event-system\\\\src\\\\metapp\\\\src\\\\metapp\\\\metatypes\\\\metarepo_metatype.h\",\
            \"c:\\\\users\\\\hp\\\\desktop\\\\eventsystem\\\\event-system\\\\src\\\\metapp\\\\src\\\\metapp\\\\metatypes\\\\overloaded_function.h\",\
            \"c:\\\\users\\\\hp\\\\desktop\\\\eventsystem\\\\event-system\\\\src\\\\metapp\\\\src\\\\metapp\\\\metatypes\\\\pointer.h\",\
            \"c:\\\\users\\\\hp\\\\desktop\\\\eventsystem\\\\event-system\\\\src\\\\metapp\\\\src\\\\metapp\\\\metatypes\\\\reference.h\",\
            \"c:\\\\users\\\\hp\\\\desktop\\\\eventsystem\\\\event-system\\\\src\\\\metapp\\\\src\\\\metapp\\\\metatypes\\\\std_deque.h\",\
            \"c:\\\\users\\\\hp\\\\desktop\\\\eventsystem\\\\event-system\\\\src\\\\metapp\\\\src\\\\metapp\\\\interfaces\\\\bases\\\\metaindexablebase.h\",\
            \"c:\\\\users\\\\hp\\\\desktop\\\\eventsystem\\\\event-system\\\\src\\\\metapp\\\\src\\\\metapp\\\\interfaces\\\\bases\\\\metaiterablebase.h\",\
            \"c:\\\\users\\\\hp\\\\desktop\\\\eventsystem\\\\event-system\\\\src\\\\metapp\\\\src\\\\metapp\\\\interfaces\\\\metaiterable.h\",\
            \"c:\\\\users\\\\hp\\\\desktop\\\\eventsystem\\\\event-system\\\\src\\\\metapp\\\\src\\\\metapp\\\\metatypes\\\\std_forward_list.h\",\
            \"c:\\\\program files\\\\microsoft visual studio\\\\2022\\\\community\\\\vc\\\\tools\\\\msvc\\\\14.38.33130\\\\include\\\\forward_list\",\
            \"c:\\\\users\\\\hp\\\\desktop\\\\eventsystem\\\\event-system\\\\src\\\\metapp\\\\src\\\\metapp\\\\metatypes\\\\std_list.h\",\
            \"c:\\\\users\\\\hp\\\\desktop\\\\eventsystem\\\\event-system\\\\src\\\\metapp\\\\src\\\\metapp\\\\metatypes\\\\std_map.h\",\
            \"c:\\\\users\\\\hp\\\\desktop\\\\eventsystem\\\\event-system\\\\src\\\\metapp\\\\src\\\\metapp\\\\interfaces\\\\bases\\\\metamappablebase.h\",\
            \"c:\\\\users\\\\hp\\\\desktop\\\\eventsystem\\\\event-system\\\\src\\\\metapp\\\\src\\\\metapp\\\\interfaces\\\\metamappable.h\",\
            \"c:\\\\users\\\\hp\\\\desktop\\\\eventsystem\\\\event-system\\\\src\\\\metapp\\\\src\\\\metapp\\\\metatypes\\\\std_pair.h\",\
            \"c:\\\\users\\\\hp\\\\desktop\\\\eventsystem\\\\event-system\\\\src\\\\metapp\\\\src\\\\metapp\\\\metatypes\\\\std_queue.h\",\
            \"c:\\\\program files\\\\microsoft visual studio\\\\2022\\\\community\\\\vc\\\\tools\\\\msvc\\\\14.38.33130\\\\include\\\\queue\",\
            \"c:\\\\users\\\\hp\\\\desktop\\\\eventsystem\\\\event-system\\\\src\\\\metapp\\\\src\\\\metapp\\\\metatypes\\\\std_set.h\",\
            \"c:\\\\users\\\\hp\\\\desktop\\\\eventsystem\\\\event-system\\\\src\\\\metapp\\\\src\\\\metapp\\\\metatypes\\\\std_stack.h\",\
            \"c:\\\\program files\\\\microsoft visual studio\\\\2022\\\\community\\\\vc\\\\tools\\\\msvc\\\\14.38.33130\\\\include\\\\stack\",\
            \"c:\\\\users\\\\hp\\\\desktop\\\\eventsystem\\\\event-system\\\\src\\\\metapp\\\\src\\\\metapp\\\\metatypes\\\\std_shared_ptr.h\",\
            \"c:\\\\users\\\\hp\\\\desktop\\\\eventsystem\\\\event-system\\\\src\\\\metapp\\\\src\\\\metapp\\\\interfaces\\\\metapointerwrapper.h\",\
            \"c:\\\\users\\\\hp\\\\desktop\\\\eventsystem\\\\event-system\\\\src\\\\metapp\\\\src\\\\metapp\\\\metatypes\\\\std_array.h\",\
            \"c:\\\\users\\\\hp\\\\desktop\\\\eventsystem\\\\event-system\\\\src\\\\metapp\\\\src\\\\metapp\\\\metatypes\\\\std_tuple.h\",\
            \"c:\\\\users\\\\hp\\\\desktop\\\\eventsystem\\\\event-system\\\\src\\\\metapp\\\\src\\\\metapp\\\\metatypes\\\\std_unique_ptr.h\",\
            \"c:\\\\users\\\\hp\\\\desktop\\\\eventsystem\\\\event-system\\\\src\\\\metapp\\\\src\\\\metapp\\\\metatypes\\\\std_unordered_map.h\",\
            \"c:\\\\users\\\\hp\\\\desktop\\\\eventsystem\\\\event-system\\\\src\\\\metapp\\\\src\\\\metapp\\\\metatypes\\\\std_unordered_set.h\",\
            \"c:\\\\program files\\\\microsoft visual studio\\\\2022\\\\community\\\\vc\\\\tools\\\\msvc\\\\14.38.33130\\\\include\\\\unordered_set\",\
            \"c:\\\\users\\\\hp\\\\desktop\\\\eventsystem\\\\event-system\\\\src\\\\metapp\\\\src\\\\metapp\\\\metatypes\\\\std_vector.h\",\
            \"c:\\\\users\\\\hp\\\\desktop\\\\eventsystem\\\\event-system\\\\src\\\\metapp\\\\src\\\\metapp\\\\metatypes\\\\std_weak_ptr.h\",\
            \"c:\\\\users\\\\hp\\\\desktop\\\\eventsystem\\\\event-system\\\\src\\\\metapp\\\\src\\\\metapp\\\\metatypes\\\\variadic_function.h\",\
            \"c:\\\\users\\\\hp\\\\desktop\\\\eventsystem\\\\event-system\\\\src\\\\metapp\\\\src\\\\metapp\\\\metatypes\\\\variant_metatype.h\",\
            \"c:\\\\users\\\\hp\\\\desktop\\\\eventsystem\\\\event-system\\\\src\\\\metapp\\\\src\\\\metapp\\\\metatypes\\\\std_any.h\",\
            \"c:\\\\users\\\\hp\\\\desktop\\\\eventsystem\\\\event-system\\\\src\\\\metapp\\\\src\\\\metapp\\\\metatypes\\\\std_variant.h\",\
            \"c:\\\\program files\\\\microsoft visual studio\\\\2022\\\\community\\\\vc\\\\tools\\\\msvc\\\\14.38.33130\\\\include\\\\variant\",\
            \"c:\\\\program files\\\\microsoft visual studio\\\\2022\\\\community\\\\vc\\\\tools\\\\msvc\\\\14.38.33130\\\\include\\\\xsmf_control.h\"\
        ],\
        \"ImportedModules\": [],\
        \"ImportedHeaderUnits\": []\
    }\
}"
}