%define version %{getenv:SS_EXT_PACK_VERS}
Name:           ss-ext-pack
Version:        %{version}
Release:        1
Summary:        Sandro Spadaro extension pack

License:        GPL-3.0
URL:            https://github.com/sandrospadaro/ss-ext-pack
Source0:        ss-ext-pack-%{version}.tar.gz
BuildArch:      noarch

Requires: mannaggia, htop, vim, gitflow, rmtrash

%description
This extension pack install common utilities and create aliases useful for dayly administrative tasks.

%prep
%setup -q
#%autosetup


%build
#%configure
#%make_build


%install
install -d $RPM_BUILD_ROOT/etc/profile.d
install -m 0755 ss-ext-pack-%{version}/ss-ext-pack.sh $RPM_BUILD_ROOT/etc/profile.d/ss-ext-pack.sh
#%make_install

%post
source /etc/profile.d/ss-ext-pack.sh

%clean
rm -rf $RPM_BUILD_ROOT

%files
%defattr(-,root,root,-)
/etc/profile.d/ss-ext-pack.sh
#%license add-license-file-here
#%doc add-docs-here



%changelog
* Sat Nov 23 2019 Sandro Spadaro <sandro.spadaro@gmail.com>
- 
