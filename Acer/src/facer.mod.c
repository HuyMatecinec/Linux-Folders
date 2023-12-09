#include <linux/module.h>
#define INCLUDE_VERMAGIC
#include <linux/build-salt.h>
#include <linux/elfnote-lto.h>
#include <linux/export-internal.h>
#include <linux/vermagic.h>
#include <linux/compiler.h>

#ifdef CONFIG_UNWINDER_ORC
#include <asm/orc_header.h>
ORC_HEADER;
#endif

BUILD_SALT;
BUILD_LTO_INFO;

MODULE_INFO(vermagic, VERMAGIC_STRING);
MODULE_INFO(name, KBUILD_MODNAME);

__visible struct module __this_module
__section(".gnu.linkonce.this_module") = {
	.name = KBUILD_MODNAME,
	.init = init_module,
#ifdef CONFIG_MODULE_UNLOAD
	.exit = cleanup_module,
#endif
	.arch = MODULE_ARCH_INIT,
};

#ifdef CONFIG_RETPOLINE
MODULE_INFO(retpoline, "Y");
#endif



static const struct modversion_info ____versions[]
__used __section("__versions") = {
	{ 0x91caa014, "rfkill_alloc" },
	{ 0xff282521, "rfkill_register" },
	{ 0xdb68bbad, "rfkill_destroy" },
	{ 0xc708f1fe, "ec_write" },
	{ 0x5cb804ad, "backlight_device_register" },
	{ 0x4dfa8d4b, "mutex_lock" },
	{ 0x65487097, "__x86_indirect_thunk_rax" },
	{ 0x3213f038, "mutex_unlock" },
	{ 0x515f854d, "led_classdev_unregister" },
	{ 0x8fb247e, "led_classdev_register_ext" },
	{ 0x870b6ef9, "backlight_device_unregister" },
	{ 0x83eb21c, "rfkill_unregister" },
	{ 0x54b1fac6, "__ubsan_handle_load_invalid_value" },
	{ 0x9fa7184a, "cancel_delayed_work_sync" },
	{ 0xd4835ef8, "dmi_check_system" },
	{ 0x7c983a5d, "dmi_walk" },
	{ 0x7de7bf50, "__acpi_video_get_backlight_type" },
	{ 0xa0d9930e, "input_allocate_device" },
	{ 0x1bce4df1, "sparse_keymap_setup" },
	{ 0xf18bdd75, "wmi_install_notify_handler" },
	{ 0x1244d2e3, "input_register_device" },
	{ 0xd75fd18a, "acpi_dev_get_first_match_dev" },
	{ 0x1a0aa092, "put_device" },
	{ 0x440f4488, "input_set_abs_params" },
	{ 0x24361edf, "__platform_driver_register" },
	{ 0xc6916b89, "platform_device_alloc" },
	{ 0x181acfe5, "platform_device_add" },
	{ 0xe3ec2f2b, "alloc_chrdev_region" },
	{ 0x6ff5f998, "class_create" },
	{ 0x278fd68a, "cdev_init" },
	{ 0x1fec0e99, "cdev_add" },
	{ 0x769355a3, "device_create" },
	{ 0x980ef6b3, "input_free_device" },
	{ 0xaba842fe, "wmi_query_block" },
	{ 0xbed752cf, "debugfs_create_dir" },
	{ 0xa4a7ba7f, "debugfs_create_u32" },
	{ 0xd32d512f, "platform_device_put" },
	{ 0x2ffd4d48, "input_set_capability" },
	{ 0x2cf56265, "__dynamic_pr_debug" },
	{ 0x141271bf, "acpi_dev_found" },
	{ 0xcd8ce890, "acpi_format_exception" },
	{ 0xa648e561, "__ubsan_handle_shift_out_of_bounds" },
	{ 0x17b0f8ca, "wmi_get_event_data" },
	{ 0x735df4c5, "sparse_keymap_entry_from_scancode" },
	{ 0xa19cd6be, "sparse_keymap_report_event" },
	{ 0xffeedf6a, "delayed_work_timer_fn" },
	{ 0x8eed781e, "param_ops_bool" },
	{ 0x5c62bc8c, "param_ops_int" },
	{ 0xbdfb6dbb, "__fentry__" },
	{ 0x5b8239ca, "__x86_return_thunk" },
	{ 0x6068bedf, "wmi_evaluate_method" },
	{ 0x37a0cba, "kfree" },
	{ 0xf0fdf6cb, "__stack_chk_fail" },
	{ 0x122c3a7e, "_printk" },
	{ 0x17f341a0, "i8042_lock_chip" },
	{ 0x4fdee897, "i8042_command" },
	{ 0x1b8b95ad, "i8042_unlock_chip" },
	{ 0xfc4152fc, "ec_read" },
	{ 0x13c49cc2, "_copy_from_user" },
	{ 0x9c6febfc, "add_uevent_var" },
	{ 0xd92deb6b, "acpi_evaluate_object" },
	{ 0x76b618fd, "input_event" },
	{ 0xc9d4d6d1, "wmi_has_guid" },
	{ 0xb9a062b0, "input_unregister_device" },
	{ 0xbe5e2a39, "debugfs_remove" },
	{ 0x2ded079a, "platform_device_unregister" },
	{ 0x60b94e20, "platform_driver_unregister" },
	{ 0x76ae31fd, "wmi_remove_notify_handler" },
	{ 0xdb4dcac9, "device_destroy" },
	{ 0x22a3fee6, "class_unregister" },
	{ 0x419f8c0a, "class_destroy" },
	{ 0xf83bb19b, "cdev_del" },
	{ 0x6091b333, "unregister_chrdev_region" },
	{ 0x1eb9516e, "round_jiffies_relative" },
	{ 0x2d3385d3, "system_wq" },
	{ 0xb2fcb56d, "queue_delayed_work_on" },
	{ 0x8a490c90, "rfkill_set_sw_state" },
	{ 0xcdce87c, "rfkill_set_hw_state_reason" },
	{ 0x101fd29a, "module_layout" },
};

MODULE_INFO(depends, "video,sparse-keymap,wmi");


MODULE_INFO(srcversion, "2F81C11E2661A1C22A4F143");
