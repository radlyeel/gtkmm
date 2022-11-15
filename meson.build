project('gtkmmtut', 'cpp', 
  default_options : 'cpp_std=c++17'
  )
gtkdep = dependency('gtkmm-4.0' )
# subdir('src')
sources = files('src/main.cpp', 'src/helloworld.cpp')
executable('demo', sources, dependencies : gtkdep)
