# Makefile generated by XPJ for linux64
-include Makefile.custom
ProjectName = flexExtCUDA
flexExtCUDA_cppfiles   += ./../../../extensions/flexExtCloth.cpp
flexExtCUDA_cppfiles   += ./../../../extensions/flexExtContainer.cpp
flexExtCUDA_cppfiles   += ./../../../extensions/flexExtMovingFrame.cpp
flexExtCUDA_cppfiles   += ./../../../extensions/flexExtRigid.cpp
flexExtCUDA_cppfiles   += ./../../../extensions/flexExtSoft.cpp
flexExtCUDA_cuda_extensions_cuda_flexExt_cu   += ./../../../extensions/cuda/flexExt.cu
flexExtCUDA_cppfiles   += ./../../../core/sdf.cpp
flexExtCUDA_cppfiles   += ./../../../core/voxelize.cpp
flexExtCUDA_cppfiles   += ./../../../core/maths.cpp
flexExtCUDA_cppfiles   += ./../../../core/aabbtree.cpp

flexExtCUDA_cpp_release_dep    = $(addprefix $(DEPSDIR)/flexExtCUDA/release/, $(subst ./, , $(subst ../, , $(patsubst %.cpp, %.cpp.P, $(flexExtCUDA_cppfiles)))))
flexExtCUDA_cc_release_dep    = $(addprefix $(DEPSDIR)/, $(subst ./, , $(subst ../, , $(patsubst %.cc, %.cc.release.P, $(flexExtCUDA_ccfiles)))))
flexExtCUDA_c_release_dep      = $(addprefix $(DEPSDIR)/flexExtCUDA/release/, $(subst ./, , $(subst ../, , $(patsubst %.c, %.c.P, $(flexExtCUDA_cfiles)))))
flexExtCUDA_release_dep      = $(flexExtCUDA_cpp_release_dep) $(flexExtCUDA_cc_release_dep) $(flexExtCUDA_c_release_dep)
-include $(flexExtCUDA_release_dep)
flexExtCUDA_cpp_debug_dep    = $(addprefix $(DEPSDIR)/flexExtCUDA/debug/, $(subst ./, , $(subst ../, , $(patsubst %.cpp, %.cpp.P, $(flexExtCUDA_cppfiles)))))
flexExtCUDA_cc_debug_dep    = $(addprefix $(DEPSDIR)/, $(subst ./, , $(subst ../, , $(patsubst %.cc, %.cc.debug.P, $(flexExtCUDA_ccfiles)))))
flexExtCUDA_c_debug_dep      = $(addprefix $(DEPSDIR)/flexExtCUDA/debug/, $(subst ./, , $(subst ../, , $(patsubst %.c, %.c.P, $(flexExtCUDA_cfiles)))))
flexExtCUDA_debug_dep      = $(flexExtCUDA_cpp_debug_dep) $(flexExtCUDA_cc_debug_dep) $(flexExtCUDA_c_debug_dep)
-include $(flexExtCUDA_debug_dep)
flexExtCUDA_release_hpaths    := 
flexExtCUDA_release_hpaths    += /usr/local/cuda/include
flexExtCUDA_release_hpaths    += /usr/local/cuda/extras/cupti/include
flexExtCUDA_release_hpaths    += ./../../..
flexExtCUDA_release_hpaths    += ./../../../external/freeglut/include
flexExtCUDA_release_lpaths    := 
flexExtCUDA_release_lpaths    += /usr/local/cuda/lib64
flexExtCUDA_release_defines   := $(flexExtCUDA_custom_defines)
flexExtCUDA_release_libraries := 
flexExtCUDA_release_libraries += ./../../../lib/linux64/NvFlexReleaseCUDA_x64.a
flexExtCUDA_release_common_cflags	:= $(flexExtCUDA_custom_cflags)
flexExtCUDA_release_common_cflags    += -MMD
flexExtCUDA_release_common_cflags    += $(addprefix -D, $(flexExtCUDA_release_defines))
flexExtCUDA_release_common_cflags    += $(addprefix -I, $(flexExtCUDA_release_hpaths))
flexExtCUDA_release_common_cflags  += -m64
flexExtCUDA_release_common_cflags  += -Wall -std=c++0x -fPIC -fpermissive -fno-strict-aliasing
flexExtCUDA_release_common_cflags  += -O3 -ffast-math -DNDEBUG
flexExtCUDA_release_cflags	:= $(flexExtCUDA_release_common_cflags)
flexExtCUDA_release_cppflags	:= $(flexExtCUDA_release_common_cflags)
flexExtCUDA_release_lflags    := $(flexExtCUDA_custom_lflags)
flexExtCUDA_release_lflags    += $(addprefix -L, $(flexExtCUDA_release_lpaths))
flexExtCUDA_release_lflags    += -Wl,--start-group $(addprefix -l, $(flexExtCUDA_release_libraries)) -Wl,--end-group
flexExtCUDA_release_lflags  += -m64
flexExtCUDA_release_objsdir  = $(OBJS_DIR)/flexExtCUDA_release
flexExtCUDA_release_cpp_o    = $(addprefix $(flexExtCUDA_release_objsdir)/, $(subst ./, , $(subst ../, , $(patsubst %.cpp, %.cpp.o, $(flexExtCUDA_cppfiles)))))
flexExtCUDA_release_cc_o    = $(addprefix $(flexExtCUDA_release_objsdir)/, $(subst ./, , $(subst ../, , $(patsubst %.cc, %.cc.o, $(flexExtCUDA_ccfiles)))))
flexExtCUDA_release_c_o      = $(addprefix $(flexExtCUDA_release_objsdir)/, $(subst ./, , $(subst ../, , $(patsubst %.c, %.c.o, $(flexExtCUDA_cfiles)))))
flexExtCUDA_release_cuda_extensions_cuda_flexExt_cu_o += $(OBJS_DIR)/flexExtCUDA_release/cuda/extensions/cudaflexExt.o
flexExtCUDA_release_obj      = $(flexExtCUDA_release_cpp_o) $(flexExtCUDA_release_cc_o) $(flexExtCUDA_release_c_o) $(flexExtCUDA_release_cuda_extensions_cuda_flexExt_cu_o)
flexExtCUDA_release_bin      := ./../../../lib/linux64/NvFlexExtReleaseCUDA_x64.a

clean_flexExtCUDA_release: 
	@$(ECHO) clean flexExtCUDA release
	@$(RMDIR) $(flexExtCUDA_release_objsdir)
	@$(RMDIR) $(flexExtCUDA_release_bin)
	@$(RMDIR) $(DEPSDIR)/flexExtCUDA/release

build_flexExtCUDA_release: postbuild_flexExtCUDA_release
postbuild_flexExtCUDA_release: mainbuild_flexExtCUDA_release
mainbuild_flexExtCUDA_release: prebuild_flexExtCUDA_release $(flexExtCUDA_release_bin)
prebuild_flexExtCUDA_release:

$(flexExtCUDA_release_bin): $(flexExtCUDA_release_obj) 
	mkdir -p `dirname ./../../../lib/linux64/NvFlexExtReleaseCUDA_x64.a`
	@$(AR) rcs $(flexExtCUDA_release_bin) $(flexExtCUDA_release_obj)
	$(ECHO) building $@ complete!

$(flexExtCUDA_release_cuda_extensions_cuda_flexExt_cu_o): $(flexExtCUDA_cuda_extensions_cuda_flexExt_cu) 
	@mkdir -p `dirname $(OBJS_DIR)/flexExtCUDA_release/cuda/extensions/cudaflexExt.o`
	$(ECHO) /usr/local/cuda/bin/nvcc -O3 -g -arch=sm_30 -m64 -Xcompiler -fPIC -D_FORCE_INLINES  -I../../.. -I../../../external -I/usr/local/cuda/include -I../../../external/cub-1.3.2  --compile "./../../../extensions/cuda/flexExt.cu" -o "$(OBJS_DIR)/flexExtCUDA_release/cuda/extensions/cudaflexExt.o"
	/usr/local/cuda/bin/nvcc -O3 -g -arch=sm_30 -m64 -Xcompiler -fPIC -D_FORCE_INLINES  -I../../.. -I../../../external -I/usr/local/cuda/include -I../../../external/cub-1.3.2  --compile "./../../../extensions/cuda/flexExt.cu" -o "$(OBJS_DIR)/flexExtCUDA_release/cuda/extensions/cudaflexExt.o"

flexExtCUDA_release_DEPDIR = $(dir $(@))/$(*F)
$(flexExtCUDA_release_cpp_o): $(flexExtCUDA_release_objsdir)/%.o:
	$(ECHO) flexExtCUDA: compiling release $(filter %$(strip $(subst .cpp.o,.cpp, $(subst $(flexExtCUDA_release_objsdir),, $@))), $(flexExtCUDA_cppfiles))...
	mkdir -p $(dir $(@))
	$(CXX) $(flexExtCUDA_release_cppflags) -c $(filter %$(strip $(subst .cpp.o,.cpp, $(subst $(flexExtCUDA_release_objsdir),, $@))), $(flexExtCUDA_cppfiles)) -o $@
	@mkdir -p $(dir $(addprefix $(DEPSDIR)/flexExtCUDA/release/, $(subst ./, , $(subst ../, , $(filter %$(strip $(subst .cpp.o,.cpp, $(subst $(flexExtCUDA_release_objsdir),, $@))), $(flexExtCUDA_cppfiles))))))
	cp $(flexExtCUDA_release_DEPDIR).d $(addprefix $(DEPSDIR)/flexExtCUDA/release/, $(subst ./, , $(subst ../, , $(filter %$(strip $(subst .cpp.o,.cpp, $(subst $(flexExtCUDA_release_objsdir),, $@))), $(flexExtCUDA_cppfiles))))).P; \
	  sed -e 's/#.*//' -e 's/^[^:]*: *//' -e 's/ *\\$$//' \
		-e '/^$$/ d' -e 's/$$/ :/' < $(flexExtCUDA_release_DEPDIR).d >> $(addprefix $(DEPSDIR)/flexExtCUDA/release/, $(subst ./, , $(subst ../, , $(filter %$(strip $(subst .cpp.o,.cpp, $(subst $(flexExtCUDA_release_objsdir),, $@))), $(flexExtCUDA_cppfiles))))).P; \
	  rm -f $(flexExtCUDA_release_DEPDIR).d

$(flexExtCUDA_release_cc_o): $(flexExtCUDA_release_objsdir)/%.o:
	$(ECHO) flexExtCUDA: compiling release $(filter %$(strip $(subst .cc.o,.cc, $(subst $(flexExtCUDA_release_objsdir),, $@))), $(flexExtCUDA_ccfiles))...
	mkdir -p $(dir $(@))
	$(CXX) $(flexExtCUDA_release_cppflags) -c $(filter %$(strip $(subst .cc.o,.cc, $(subst $(flexExtCUDA_release_objsdir),, $@))), $(flexExtCUDA_ccfiles)) -o $@
	mkdir -p $(dir $(addprefix $(DEPSDIR)/, $(subst ./, , $(subst ../, , $(filter %$(strip $(subst .cc.o,.cc, $(subst $(flexExtCUDA_release_objsdir),, $@))), $(flexExtCUDA_ccfiles))))))
	cp $(flexExtCUDA_release_DEPDIR).d $(addprefix $(DEPSDIR)/, $(subst ./, , $(subst ../, , $(filter %$(strip $(subst .cc.o,.cc, $(subst $(flexExtCUDA_release_objsdir),, $@))), $(flexExtCUDA_ccfiles))))).release.P; \
	  sed -e 's/#.*//' -e 's/^[^:]*: *//' -e 's/ *\\$$//' \
		-e '/^$$/ d' -e 's/$$/ :/' < $(flexExtCUDA_release_DEPDIR).d >> $(addprefix $(DEPSDIR)/, $(subst ./, , $(subst ../, , $(filter %$(strip $(subst .cc.o,.cc, $(subst $(flexExtCUDA_release_objsdir),, $@))), $(flexExtCUDA_ccfiles))))).release.P; \
	  rm -f $(flexExtCUDA_release_DEPDIR).d

$(flexExtCUDA_release_c_o): $(flexExtCUDA_release_objsdir)/%.o:
	$(ECHO) flexExtCUDA: compiling release $(filter %$(strip $(subst .c.o,.c, $(subst $(flexExtCUDA_release_objsdir),, $@))), $(flexExtCUDA_cfiles))...
	mkdir -p $(dir $(@))
	$(CC) $(flexExtCUDA_release_cflags) -c $(filter %$(strip $(subst .c.o,.c, $(subst $(flexExtCUDA_release_objsdir),, $@))), $(flexExtCUDA_cfiles)) -o $@ 
	@mkdir -p $(dir $(addprefix $(DEPSDIR)/flexExtCUDA/release/, $(subst ./, , $(subst ../, , $(filter %$(strip $(subst .c.o,.c, $(subst $(flexExtCUDA_release_objsdir),, $@))), $(flexExtCUDA_cfiles))))))
	cp $(flexExtCUDA_release_DEPDIR).d $(addprefix $(DEPSDIR)/flexExtCUDA/release/, $(subst ./, , $(subst ../, , $(filter %$(strip $(subst .c.o,.c, $(subst $(flexExtCUDA_release_objsdir),, $@))), $(flexExtCUDA_cfiles))))).P; \
	  sed -e 's/#.*//' -e 's/^[^:]*: *//' -e 's/ *\\$$//' \
		-e '/^$$/ d' -e 's/$$/ :/' < $(flexExtCUDA_release_DEPDIR).d >> $(addprefix $(DEPSDIR)/flexExtCUDA/release/, $(subst ./, , $(subst ../, , $(filter %$(strip $(subst .c.o,.c, $(subst $(flexExtCUDA_release_objsdir),, $@))), $(flexExtCUDA_cfiles))))).P; \
	  rm -f $(flexExtCUDA_release_DEPDIR).d

flexExtCUDA_debug_hpaths    := 
flexExtCUDA_debug_hpaths    += /usr/local/cuda/include
flexExtCUDA_debug_hpaths    += /usr/local/cuda/extras/cupti/include
flexExtCUDA_debug_hpaths    += ./../../..
flexExtCUDA_debug_hpaths    += ./../../../external/freeglut/include
flexExtCUDA_debug_lpaths    := 
flexExtCUDA_debug_lpaths    += /usr/local/cuda/lib64
flexExtCUDA_debug_defines   := $(flexExtCUDA_custom_defines)
flexExtCUDA_debug_libraries := 
flexExtCUDA_debug_libraries += ./../../../lib/linux64/NvFlexDebugCUDA_x64.a
flexExtCUDA_debug_common_cflags	:= $(flexExtCUDA_custom_cflags)
flexExtCUDA_debug_common_cflags    += -MMD
flexExtCUDA_debug_common_cflags    += $(addprefix -D, $(flexExtCUDA_debug_defines))
flexExtCUDA_debug_common_cflags    += $(addprefix -I, $(flexExtCUDA_debug_hpaths))
flexExtCUDA_debug_common_cflags  += -m64
flexExtCUDA_debug_common_cflags  += -Wall -std=c++0x -fPIC -fpermissive -fno-strict-aliasing
flexExtCUDA_debug_common_cflags  += -g -O0
flexExtCUDA_debug_cflags	:= $(flexExtCUDA_debug_common_cflags)
flexExtCUDA_debug_cppflags	:= $(flexExtCUDA_debug_common_cflags)
flexExtCUDA_debug_lflags    := $(flexExtCUDA_custom_lflags)
flexExtCUDA_debug_lflags    += $(addprefix -L, $(flexExtCUDA_debug_lpaths))
flexExtCUDA_debug_lflags    += -Wl,--start-group $(addprefix -l, $(flexExtCUDA_debug_libraries)) -Wl,--end-group
flexExtCUDA_debug_lflags  += -m64
flexExtCUDA_debug_objsdir  = $(OBJS_DIR)/flexExtCUDA_debug
flexExtCUDA_debug_cpp_o    = $(addprefix $(flexExtCUDA_debug_objsdir)/, $(subst ./, , $(subst ../, , $(patsubst %.cpp, %.cpp.o, $(flexExtCUDA_cppfiles)))))
flexExtCUDA_debug_cc_o    = $(addprefix $(flexExtCUDA_debug_objsdir)/, $(subst ./, , $(subst ../, , $(patsubst %.cc, %.cc.o, $(flexExtCUDA_ccfiles)))))
flexExtCUDA_debug_c_o      = $(addprefix $(flexExtCUDA_debug_objsdir)/, $(subst ./, , $(subst ../, , $(patsubst %.c, %.c.o, $(flexExtCUDA_cfiles)))))
flexExtCUDA_debug_cuda_extensions_cuda_flexExt_cu_o += $(OBJS_DIR)/flexExtCUDA_debug/cuda/extensions/cudaflexExt.o
flexExtCUDA_debug_obj      = $(flexExtCUDA_debug_cpp_o) $(flexExtCUDA_debug_cc_o) $(flexExtCUDA_debug_c_o) $(flexExtCUDA_debug_cuda_extensions_cuda_flexExt_cu_o)
flexExtCUDA_debug_bin      := ./../../../lib/linux64/NvFlexExtDebugCUDA_x64.a

clean_flexExtCUDA_debug: 
	@$(ECHO) clean flexExtCUDA debug
	@$(RMDIR) $(flexExtCUDA_debug_objsdir)
	@$(RMDIR) $(flexExtCUDA_debug_bin)
	@$(RMDIR) $(DEPSDIR)/flexExtCUDA/debug

build_flexExtCUDA_debug: postbuild_flexExtCUDA_debug
postbuild_flexExtCUDA_debug: mainbuild_flexExtCUDA_debug
mainbuild_flexExtCUDA_debug: prebuild_flexExtCUDA_debug $(flexExtCUDA_debug_bin)
prebuild_flexExtCUDA_debug:

$(flexExtCUDA_debug_bin): $(flexExtCUDA_debug_obj) 
	mkdir -p `dirname ./../../../lib/linux64/NvFlexExtDebugCUDA_x64.a`
	@$(AR) rcs $(flexExtCUDA_debug_bin) $(flexExtCUDA_debug_obj)
	$(ECHO) building $@ complete!

$(flexExtCUDA_debug_cuda_extensions_cuda_flexExt_cu_o): $(flexExtCUDA_cuda_extensions_cuda_flexExt_cu) 
	@mkdir -p `dirname $(OBJS_DIR)/flexExtCUDA_debug/cuda/extensions/cudaflexExt.o`
	$(ECHO) /usr/local/cuda/bin/nvcc -O3 -g -arch=sm_30 -m64 -Xcompiler -fPIC -D_FORCE_INLINES  -I../../.. -I../../../external -I/usr/local/cuda/include -I../../../external/cub-1.3.2  --compile "./../../../extensions/cuda/flexExt.cu" -o "$(OBJS_DIR)/flexExtCUDA_debug/cuda/extensions/cudaflexExt.o"
	/usr/local/cuda/bin/nvcc -O3 -g -arch=sm_30 -m64 -Xcompiler -fPIC -D_FORCE_INLINES  -I../../.. -I../../../external -I/usr/local/cuda/include -I../../../external/cub-1.3.2  --compile "./../../../extensions/cuda/flexExt.cu" -o "$(OBJS_DIR)/flexExtCUDA_debug/cuda/extensions/cudaflexExt.o"

flexExtCUDA_debug_DEPDIR = $(dir $(@))/$(*F)
$(flexExtCUDA_debug_cpp_o): $(flexExtCUDA_debug_objsdir)/%.o:
	$(ECHO) flexExtCUDA: compiling debug $(filter %$(strip $(subst .cpp.o,.cpp, $(subst $(flexExtCUDA_debug_objsdir),, $@))), $(flexExtCUDA_cppfiles))...
	mkdir -p $(dir $(@))
	$(CXX) $(flexExtCUDA_debug_cppflags) -c $(filter %$(strip $(subst .cpp.o,.cpp, $(subst $(flexExtCUDA_debug_objsdir),, $@))), $(flexExtCUDA_cppfiles)) -o $@
	@mkdir -p $(dir $(addprefix $(DEPSDIR)/flexExtCUDA/debug/, $(subst ./, , $(subst ../, , $(filter %$(strip $(subst .cpp.o,.cpp, $(subst $(flexExtCUDA_debug_objsdir),, $@))), $(flexExtCUDA_cppfiles))))))
	cp $(flexExtCUDA_debug_DEPDIR).d $(addprefix $(DEPSDIR)/flexExtCUDA/debug/, $(subst ./, , $(subst ../, , $(filter %$(strip $(subst .cpp.o,.cpp, $(subst $(flexExtCUDA_debug_objsdir),, $@))), $(flexExtCUDA_cppfiles))))).P; \
	  sed -e 's/#.*//' -e 's/^[^:]*: *//' -e 's/ *\\$$//' \
		-e '/^$$/ d' -e 's/$$/ :/' < $(flexExtCUDA_debug_DEPDIR).d >> $(addprefix $(DEPSDIR)/flexExtCUDA/debug/, $(subst ./, , $(subst ../, , $(filter %$(strip $(subst .cpp.o,.cpp, $(subst $(flexExtCUDA_debug_objsdir),, $@))), $(flexExtCUDA_cppfiles))))).P; \
	  rm -f $(flexExtCUDA_debug_DEPDIR).d

$(flexExtCUDA_debug_cc_o): $(flexExtCUDA_debug_objsdir)/%.o:
	$(ECHO) flexExtCUDA: compiling debug $(filter %$(strip $(subst .cc.o,.cc, $(subst $(flexExtCUDA_debug_objsdir),, $@))), $(flexExtCUDA_ccfiles))...
	mkdir -p $(dir $(@))
	$(CXX) $(flexExtCUDA_debug_cppflags) -c $(filter %$(strip $(subst .cc.o,.cc, $(subst $(flexExtCUDA_debug_objsdir),, $@))), $(flexExtCUDA_ccfiles)) -o $@
	mkdir -p $(dir $(addprefix $(DEPSDIR)/, $(subst ./, , $(subst ../, , $(filter %$(strip $(subst .cc.o,.cc, $(subst $(flexExtCUDA_debug_objsdir),, $@))), $(flexExtCUDA_ccfiles))))))
	cp $(flexExtCUDA_debug_DEPDIR).d $(addprefix $(DEPSDIR)/, $(subst ./, , $(subst ../, , $(filter %$(strip $(subst .cc.o,.cc, $(subst $(flexExtCUDA_debug_objsdir),, $@))), $(flexExtCUDA_ccfiles))))).debug.P; \
	  sed -e 's/#.*//' -e 's/^[^:]*: *//' -e 's/ *\\$$//' \
		-e '/^$$/ d' -e 's/$$/ :/' < $(flexExtCUDA_debug_DEPDIR).d >> $(addprefix $(DEPSDIR)/, $(subst ./, , $(subst ../, , $(filter %$(strip $(subst .cc.o,.cc, $(subst $(flexExtCUDA_debug_objsdir),, $@))), $(flexExtCUDA_ccfiles))))).debug.P; \
	  rm -f $(flexExtCUDA_debug_DEPDIR).d

$(flexExtCUDA_debug_c_o): $(flexExtCUDA_debug_objsdir)/%.o:
	$(ECHO) flexExtCUDA: compiling debug $(filter %$(strip $(subst .c.o,.c, $(subst $(flexExtCUDA_debug_objsdir),, $@))), $(flexExtCUDA_cfiles))...
	mkdir -p $(dir $(@))
	$(CC) $(flexExtCUDA_debug_cflags) -c $(filter %$(strip $(subst .c.o,.c, $(subst $(flexExtCUDA_debug_objsdir),, $@))), $(flexExtCUDA_cfiles)) -o $@ 
	@mkdir -p $(dir $(addprefix $(DEPSDIR)/flexExtCUDA/debug/, $(subst ./, , $(subst ../, , $(filter %$(strip $(subst .c.o,.c, $(subst $(flexExtCUDA_debug_objsdir),, $@))), $(flexExtCUDA_cfiles))))))
	cp $(flexExtCUDA_debug_DEPDIR).d $(addprefix $(DEPSDIR)/flexExtCUDA/debug/, $(subst ./, , $(subst ../, , $(filter %$(strip $(subst .c.o,.c, $(subst $(flexExtCUDA_debug_objsdir),, $@))), $(flexExtCUDA_cfiles))))).P; \
	  sed -e 's/#.*//' -e 's/^[^:]*: *//' -e 's/ *\\$$//' \
		-e '/^$$/ d' -e 's/$$/ :/' < $(flexExtCUDA_debug_DEPDIR).d >> $(addprefix $(DEPSDIR)/flexExtCUDA/debug/, $(subst ./, , $(subst ../, , $(filter %$(strip $(subst .c.o,.c, $(subst $(flexExtCUDA_debug_objsdir),, $@))), $(flexExtCUDA_cfiles))))).P; \
	  rm -f $(flexExtCUDA_debug_DEPDIR).d

clean_flexExtCUDA:  clean_flexExtCUDA_release clean_flexExtCUDA_debug
	rm -rf $(DEPSDIR)

export VERBOSE
ifndef VERBOSE
.SILENT:
endif
