# Copyright 2023 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

# Auto-Generated by cargo-ebuild 0.5.4

EAPI=8

CRATES="
	adler-1.0.2
	ahash-0.7.6
	aho-corasick-0.7.20
	arrayvec-0.5.2
	askama-0.10.5
	askama_derive-0.10.5
	askama_escape-0.10.3
	askama_shared-0.11.2
	async-trait-0.1.68
	atty-0.2.14
	autocfg-1.1.0
	base16-0.2.1
	base64-0.13.1
	base64-0.21.0
	bincode-1.3.3
	bitflags-1.3.2
	bitmaps-2.1.0
	bitvec-0.19.6
	block-buffer-0.9.0
	bstr-1.4.0
	bumpalo-3.12.0
	bytes-1.4.0
	capnp-0.14.11
	capnpc-0.14.9
	cc-1.0.79
	cfg-if-1.0.0
	chrono-0.4.24
	clap-3.2.25
	clap_derive-3.2.25
	clap_lex-0.2.4
	codespan-reporting-0.11.1
	combine-4.6.6
	console-0.15.5
	console_error_panic_hook-0.1.7
	core-foundation-0.9.3
	core-foundation-sys-0.8.4
	cpufeatures-0.2.6
	crc32fast-1.3.2
	crossbeam-channel-0.5.8
	crossbeam-utils-0.8.15
	ctor-0.1.26
	ctrlc-3.2.5
	data-encoding-2.3.3
	debug-ignore-1.0.5
	der-oid-macro-0.4.0
	der-parser-5.1.2
	diff-0.1.13
	digest-0.9.0
	dirs-next-2.0.0
	dirs-sys-next-0.1.2
	either-1.8.1
	encode_unicode-0.3.6
	encoding_rs-0.8.32
	errno-0.3.1
	errno-dragonfly-0.1.2
	fastrand-1.9.0
	filetime-0.2.21
	fixedbitset-0.4.2
	flate2-1.0.25
	fnv-1.0.7
	form_urlencoded-1.1.0
	fs_extra-1.3.0
	fslock-0.2.1
	funty-1.1.0
	futures-0.3.28
	futures-channel-0.3.28
	futures-core-0.3.28
	futures-executor-0.3.28
	futures-io-0.3.28
	futures-macro-0.3.28
	futures-sink-0.3.28
	futures-task-0.3.28
	futures-util-0.3.28
	generic-array-0.14.7
	getrandom-0.2.9
	globset-0.4.10
	h2-0.3.18
	hashbrown-0.12.3
	heck-0.4.1
	hermit-abi-0.1.19
	hermit-abi-0.2.6
	hermit-abi-0.3.1
	hexpm-2.0.0
	hostname-0.3.1
	http-0.2.9
	http-auth-basic-0.3.3
	http-body-0.4.5
	httparse-1.8.0
	httpdate-1.0.2
	humansize-1.1.1
	hyper-0.14.26
	hyper-rustls-0.23.2
	idna-0.3.0
	ignore-0.4.20
	im-15.1.0
	indexmap-1.9.3
	insta-1.29.0
	instant-0.1.12
	io-lifetimes-1.0.10
	ipnet-2.7.2
	itertools-0.10.5
	itoa-1.0.6
	js-sys-0.3.61
	kstring-1.0.6
	lazy_static-1.4.0
	lexical-core-0.7.6
	libc-0.2.142
	linked-hash-map-0.5.6
	linux-raw-sys-0.3.3
	log-0.4.17
	lsp-server-0.5.2
	lsp-types-0.92.1
	match_cfg-0.1.0
	matchers-0.1.0
	memchr-2.5.0
	mime-0.3.17
	miniz_oxide-0.6.2
	mio-0.8.6
	nix-0.26.2
	nom-6.1.2
	nu-ansi-term-0.46.0
	num-bigint-0.4.3
	num-integer-0.1.45
	num-traits-0.2.15
	num_cpus-1.15.0
	oid-registry-0.1.5
	once_cell-1.17.1
	opaque-debug-0.3.0
	openssl-probe-0.1.5
	os_str_bytes-6.5.0
	output_vt100-0.1.3
	overload-0.1.1
	percent-encoding-2.2.0
	petgraph-0.6.3
	pin-project-lite-0.2.9
	pin-utils-0.1.0
	ppv-lite86-0.2.17
	pretty_assertions-1.3.0
	proc-macro-error-1.0.4
	proc-macro-error-attr-1.0.4
	proc-macro2-1.0.56
	protobuf-2.28.0
	protobuf-codegen-2.28.0
	protobuf-codegen-pure-2.28.0
	pubgrub-0.2.1
	pulldown-cmark-0.8.0
	quote-1.0.26
	radium-0.5.3
	rand-0.8.5
	rand_chacha-0.3.1
	rand_core-0.6.4
	rand_xoshiro-0.6.0
	redox_syscall-0.2.16
	redox_syscall-0.3.5
	redox_users-0.4.3
	regex-1.7.3
	regex-automata-0.1.10
	regex-syntax-0.6.29
	reqwest-0.11.16
	ring-0.16.20
	rpassword-5.0.1
	rustc-hash-1.1.0
	rusticata-macros-3.2.0
	rustix-0.37.13
	rustls-0.20.8
	rustls-native-certs-0.6.2
	rustls-pemfile-1.0.2
	rustversion-1.0.12
	ryu-1.0.13
	same-file-1.0.6
	schannel-0.1.21
	scoped-tls-1.0.1
	sct-0.7.0
	security-framework-2.8.2
	security-framework-sys-2.8.0
	serde-1.0.160
	serde-wasm-bindgen-0.4.5
	serde_derive-1.0.160
	serde_json-1.0.96
	serde_repr-0.1.12
	serde_urlencoded-0.7.1
	sha2-0.9.9
	sharded-slab-0.1.4
	similar-2.2.1
	sized-chunks-0.6.5
	slab-0.4.8
	smallvec-1.10.0
	smawk-0.3.1
	smol_str-0.1.24
	socket2-0.4.9
	spdx-0.8.1
	spin-0.5.2
	static_assertions-1.1.0
	strsim-0.10.0
	strum-0.24.1
	strum_macros-0.24.3
	symlink-0.1.0
	syn-1.0.109
	syn-2.0.15
	tap-1.0.1
	tar-0.4.38
	tempfile-3.5.0
	termcolor-1.2.0
	terminal_size-0.1.17
	textwrap-0.15.0
	textwrap-0.16.0
	thiserror-1.0.40
	thiserror-impl-1.0.40
	thread_local-1.1.7
	tinyvec-1.6.0
	tinyvec_macros-0.1.1
	tokio-1.27.0
	tokio-rustls-0.23.4
	tokio-util-0.7.7
	toml-0.5.11
	toml_edit-0.9.1
	tower-service-0.3.2
	tracing-0.1.37
	tracing-attributes-0.1.23
	tracing-core-0.1.30
	tracing-log-0.1.3
	tracing-subscriber-0.3.16
	tracing-wasm-0.2.1
	try-lock-0.2.4
	typenum-1.16.0
	unicase-2.6.0
	unicode-bidi-0.3.13
	unicode-ident-1.0.8
	unicode-linebreak-0.1.4
	unicode-normalization-0.1.22
	unicode-width-0.1.10
	untrusted-0.7.1
	url-2.3.1
	valuable-0.1.0
	vec1-1.10.1
	version_check-0.9.4
	walkdir-2.3.3
	want-0.3.0
	wasi-0.11.0+wasi-snapshot-preview1
	wasm-bindgen-0.2.84
	wasm-bindgen-backend-0.2.84
	wasm-bindgen-futures-0.4.34
	wasm-bindgen-macro-0.2.84
	wasm-bindgen-macro-support-0.2.84
	wasm-bindgen-shared-0.2.84
	wasm-bindgen-test-0.3.34
	wasm-bindgen-test-macro-0.3.34
	web-sys-0.3.61
	webpki-0.22.0
	winapi-0.3.9
	winapi-i686-pc-windows-gnu-0.4.0
	winapi-util-0.1.5
	winapi-x86_64-pc-windows-gnu-0.4.0
	windows-sys-0.42.0
	windows-sys-0.45.0
	windows-sys-0.48.0
	windows-targets-0.42.2
	windows-targets-0.48.0
	windows_aarch64_gnullvm-0.42.2
	windows_aarch64_gnullvm-0.48.0
	windows_aarch64_msvc-0.42.2
	windows_aarch64_msvc-0.48.0
	windows_i686_gnu-0.42.2
	windows_i686_gnu-0.48.0
	windows_i686_msvc-0.42.2
	windows_i686_msvc-0.48.0
	windows_x86_64_gnu-0.42.2
	windows_x86_64_gnu-0.48.0
	windows_x86_64_gnullvm-0.42.2
	windows_x86_64_gnullvm-0.48.0
	windows_x86_64_msvc-0.42.2
	windows_x86_64_msvc-0.48.0
	winreg-0.10.1
	wyz-0.2.0
	x509-parser-0.9.2
	xattr-0.2.3
	xxhash-rust-0.8.6
	yaml-rust-0.4.5
	yansi-0.5.1
"

inherit cargo

DESCRIPTION="A statically typed functional language for the BEAM"
HOMEPAGE="https://gleam.run"
SRC_URI="
		https://github.com/gleam-lang/gleam/archive/v${PV}.tar.gz -> ${P}.tar.gz
		$(cargo_crate_uris ${CRATES})
"

LICENSE="0BSD Apache-2.0 Apache-2.0-with-LLVM-exceptions BSD Boost-1.0 CC0-1.0 ISC MIT MPL-2.0 Unicode-DFS-2016 Unlicense ZLIB"
SLOT="0"
KEYWORDS="~amd64"

QA_FLAGS_IGNORED="usr/bin/gleam"

src_configure() {
		export RUSTFLAGS="${RUSTFLAGS} --cap-lints warn"
		cargo_src_configure
}

src_compile() {
		cd compiler-cli || die
		cargo_src_compile
}

src_install() {
		cargo_src_install --path compiler-cli
}
