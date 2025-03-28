import { type Build } from 'xbuild';

const build: Build = {
    common: {
        project: 'librg',
        archs: ['x64'],
        variables: [],
        copy: {
            'librg/code/librg.h': 'librg/code/librg.c'
        },
        defines: ['LIBRG_IMPLEMENTATION'],
        options: [],
        subdirectories: [],
        libraries: {
            'librg': {
                sources: ['librg/code/librg.c']
            }
        },
        buildDir: 'build',
        buildOutDir: 'libs',
        buildFlags: []
    },
    platforms: {
        win32: {
            windows: {},
            android: {
                archs: ['x86', 'x86_64', 'armeabi-v7a', 'arm64-v8a'],
            }
        },
        linux: {
            linux: {}
        },
        darwin: {
            macos: {}
        }
    }
}

export default build;