AC_DEFUN([AC_RPM_RELEASE],[
    AC_ARG_WITH([rpm-release],
	    [AS_HELP_STRING([--with-rpm-release=R],
	       [specify the release number of rpm package generated with "make rpm" @<:@default=0@:>@])],
	    [],
	    [with_rpm_release=0])	   	
    if test "x$with_rpm_release" = x; then
       with_rpm_release=0
    fi
    AC_SUBST([RPM_RELEASE], [$with_rpm_release])
])

