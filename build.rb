# macos build
system('make clean')
system('cd lib/noise && make')
system('cd lib/glad && clang -o src/glad.o -Iinclude -c src/glad.c')
system('cd lib/cglm && rm -rf CMakeCache.txt && cmake . -DCGLM_STATIC=ON && make')
system('cd lib/glfw && rm -rf CMakeCache.txt && cmake . && make')
system('make dirs')
system('make game')
