# Sample App to Reproduce Extraneous System Logs in Xcode

This is a sample app used to reproduce common logs from components outside of your app, which cannot be disabled (i.e. would required a fix from Apple to have them removed from your app's debug logs).

# Reproducing the Logs

1. Build the app
1. Run the app in a simulator in Xcode 10 (triggers `ViewController.viewDidLoad`, which is where the log repro code lives)

# PRs Welcome!

In a PR, please include the code that triggers the log in `ViewController.viewDidLoad` with a comment that indicates the class of logs generated. Additionally, please update this README.md with the new class of logs that your contribution captures. Thanks!

# Classes of Logs Captured in this Sample App

- `TIC Read Status […]: 1:57`
- `[BoringSSL] nw_protocol_boringssl_get_output_frames … get output frames failed, state …`
- `Failed to create synchronous remote object proxy: Error Domain=NSCocoaErrorDomain Code=4099 "The connection to service named com.apple.commcenter.coretelephony.xpc was invalidated." UserInfo={NSDebugDescription=The connection to service named com.apple.commcenter.coretelephony.xpc was invalidated.}` (CoreTelephony)
- `Failed to ping server after delegate was set` (CoreTelephony)
- `Descriptors query returned error: Error Domain=NSCocoaErrorDomain Code=4099 "The connection to service named com.apple.commcenter.coretelephony.xpc was invalidated." UserInfo={NSDebugDescription=The connection to service named com.apple.commcenter.coretelephony.xpc was invalidated.}` (CoreTelephony)
