// This file is automatically generated, so please do not edit it.
// Generated by `flutter_rust_bridge`@ 2.0.0-dev.32.

// ignore_for_file: unused_import, unused_element, unnecessary_import, duplicate_ignore, invalid_use_of_internal_member, annotate_overrides, non_constant_identifier_names, curly_braces_in_flow_control_structures, prefer_const_literals_to_create_immutables, unused_field

import 'api/smtc_flutter.dart';
import 'api/tag_reader.dart';
import 'dart:async';
import 'dart:convert';
import 'frb_generated.io.dart' if (dart.library.html) 'frb_generated.web.dart';
import 'package:flutter_rust_bridge/flutter_rust_bridge_for_generated.dart';

/// Main entrypoint of the Rust API
class RustLib extends BaseEntrypoint<RustLibApi, RustLibApiImpl, RustLibWire> {
  @internal
  static final instance = RustLib._();

  RustLib._();

  /// Initialize flutter_rust_bridge
  static Future<void> init({
    RustLibApi? api,
    BaseHandler? handler,
    ExternalLibrary? externalLibrary,
  }) async {
    await instance.initImpl(
      api: api,
      handler: handler,
      externalLibrary: externalLibrary,
    );
  }

  /// Dispose flutter_rust_bridge
  ///
  /// The call to this function is optional, since flutter_rust_bridge (and everything else)
  /// is automatically disposed when the app stops.
  static void dispose() => instance.disposeImpl();

  @override
  ApiImplConstructor<RustLibApiImpl, RustLibWire> get apiImplConstructor =>
      RustLibApiImpl.new;

  @override
  WireConstructor<RustLibWire> get wireConstructor =>
      RustLibWire.fromExternalLibrary;

  @override
  Future<void> executeRustInitializers() async {}

  @override
  ExternalLibraryLoaderConfig get defaultExternalLibraryLoaderConfig =>
      kDefaultExternalLibraryLoaderConfig;

  @override
  String get codegenVersion => '2.0.0-dev.32';

  @override
  int get rustContentHash => 1623517208;

  static const kDefaultExternalLibraryLoaderConfig =
      ExternalLibraryLoaderConfig(
    stem: 'rust_lib',
    ioDirectory: 'rust/target/release/',
    webPrefix: 'pkg/',
  );
}

abstract class RustLibApi extends BaseApi {
  Future<void> smtcFlutterClose({required SmtcFlutter that, dynamic hint});

  SmtcFlutter smtcFlutterNew({dynamic hint});

  Stream<SMTCControlEvent> smtcFlutterSubscribeToControlEvents(
      {required SmtcFlutter that, dynamic hint});

  Future<void> smtcFlutterUpdateDisplay(
      {required SmtcFlutter that,
      required String title,
      required String artist,
      required String album,
      required String path,
      dynamic hint});

  Future<void> smtcFlutterUpdateState(
      {required SmtcFlutter that, required SMTCState state, dynamic hint});

  Future<void> buildIndexFromPaths(
      {required List<String> paths, required String indexPath, dynamic hint});

  Future<Uint8List?> loadCoverBytes({required String path, dynamic hint});

  Future<String?> loadLyricFromFlac({required String path, dynamic hint});

  Future<String?> loadLyricFromLrc({required String path, dynamic hint});

  Future<String?> loadLyricFromMp3({required String path, dynamic hint});

  Future<void> updateIndex({required String indexPath, dynamic hint});

  RustArcIncrementStrongCountFnType
      get rust_arc_increment_strong_count_SmtcFlutter;

  RustArcDecrementStrongCountFnType
      get rust_arc_decrement_strong_count_SmtcFlutter;

  CrossPlatformFinalizerArg get rust_arc_decrement_strong_count_SmtcFlutterPtr;
}

class RustLibApiImpl extends RustLibApiImplPlatform implements RustLibApi {
  RustLibApiImpl({
    required super.handler,
    required super.wire,
    required super.generalizedFrbRustBinding,
    required super.portManager,
  });

  @override
  Future<void> smtcFlutterClose({required SmtcFlutter that, dynamic hint}) {
    return handler.executeNormal(NormalTask(
      callFfi: (port_) {
        final serializer = SseSerializer(generalizedFrbRustBinding);
        sse_encode_Auto_Owned_RustOpaque_flutter_rust_bridgefor_generatedrust_asyncRwLockSMTCFlutter(
            that, serializer);
        pdeCallFfi(generalizedFrbRustBinding, serializer,
            funcId: 5, port: port_);
      },
      codec: SseCodec(
        decodeSuccessData: sse_decode_unit,
        decodeErrorData: null,
      ),
      constMeta: kSmtcFlutterCloseConstMeta,
      argValues: [that],
      apiImpl: this,
      hint: hint,
    ));
  }

  TaskConstMeta get kSmtcFlutterCloseConstMeta => const TaskConstMeta(
        debugName: "SmtcFlutter_close",
        argNames: ["that"],
      );

  @override
  SmtcFlutter smtcFlutterNew({dynamic hint}) {
    return handler.executeSync(SyncTask(
      callFfi: () {
        final serializer = SseSerializer(generalizedFrbRustBinding);
        return pdeCallFfi(generalizedFrbRustBinding, serializer, funcId: 1)!;
      },
      codec: SseCodec(
        decodeSuccessData:
            sse_decode_Auto_Owned_RustOpaque_flutter_rust_bridgefor_generatedrust_asyncRwLockSMTCFlutter,
        decodeErrorData: null,
      ),
      constMeta: kSmtcFlutterNewConstMeta,
      argValues: [],
      apiImpl: this,
      hint: hint,
    ));
  }

  TaskConstMeta get kSmtcFlutterNewConstMeta => const TaskConstMeta(
        debugName: "SmtcFlutter_new",
        argNames: [],
      );

  @override
  Stream<SMTCControlEvent> smtcFlutterSubscribeToControlEvents(
      {required SmtcFlutter that, dynamic hint}) {
    final sink = RustStreamSink<SMTCControlEvent>();
    unawaited(handler.executeNormal(NormalTask(
      callFfi: (port_) {
        final serializer = SseSerializer(generalizedFrbRustBinding);
        sse_encode_Auto_Ref_RustOpaque_flutter_rust_bridgefor_generatedrust_asyncRwLockSMTCFlutter(
            that, serializer);
        sse_encode_StreamSink_smtc_control_event_Sse(sink, serializer);
        pdeCallFfi(generalizedFrbRustBinding, serializer,
            funcId: 2, port: port_);
      },
      codec: SseCodec(
        decodeSuccessData: sse_decode_unit,
        decodeErrorData: null,
      ),
      constMeta: kSmtcFlutterSubscribeToControlEventsConstMeta,
      argValues: [that, sink],
      apiImpl: this,
      hint: hint,
    )));
    return sink.stream;
  }

  TaskConstMeta get kSmtcFlutterSubscribeToControlEventsConstMeta =>
      const TaskConstMeta(
        debugName: "SmtcFlutter_subscribe_to_control_events",
        argNames: ["that", "sink"],
      );

  @override
  Future<void> smtcFlutterUpdateDisplay(
      {required SmtcFlutter that,
      required String title,
      required String artist,
      required String album,
      required String path,
      dynamic hint}) {
    return handler.executeNormal(NormalTask(
      callFfi: (port_) {
        final serializer = SseSerializer(generalizedFrbRustBinding);
        sse_encode_Auto_Ref_RustOpaque_flutter_rust_bridgefor_generatedrust_asyncRwLockSMTCFlutter(
            that, serializer);
        sse_encode_String(title, serializer);
        sse_encode_String(artist, serializer);
        sse_encode_String(album, serializer);
        sse_encode_String(path, serializer);
        pdeCallFfi(generalizedFrbRustBinding, serializer,
            funcId: 4, port: port_);
      },
      codec: SseCodec(
        decodeSuccessData: sse_decode_unit,
        decodeErrorData: null,
      ),
      constMeta: kSmtcFlutterUpdateDisplayConstMeta,
      argValues: [that, title, artist, album, path],
      apiImpl: this,
      hint: hint,
    ));
  }

  TaskConstMeta get kSmtcFlutterUpdateDisplayConstMeta => const TaskConstMeta(
        debugName: "SmtcFlutter_update_display",
        argNames: ["that", "title", "artist", "album", "path"],
      );

  @override
  Future<void> smtcFlutterUpdateState(
      {required SmtcFlutter that, required SMTCState state, dynamic hint}) {
    return handler.executeNormal(NormalTask(
      callFfi: (port_) {
        final serializer = SseSerializer(generalizedFrbRustBinding);
        sse_encode_Auto_Ref_RustOpaque_flutter_rust_bridgefor_generatedrust_asyncRwLockSMTCFlutter(
            that, serializer);
        sse_encode_smtc_state(state, serializer);
        pdeCallFfi(generalizedFrbRustBinding, serializer,
            funcId: 3, port: port_);
      },
      codec: SseCodec(
        decodeSuccessData: sse_decode_unit,
        decodeErrorData: null,
      ),
      constMeta: kSmtcFlutterUpdateStateConstMeta,
      argValues: [that, state],
      apiImpl: this,
      hint: hint,
    ));
  }

  TaskConstMeta get kSmtcFlutterUpdateStateConstMeta => const TaskConstMeta(
        debugName: "SmtcFlutter_update_state",
        argNames: ["that", "state"],
      );

  @override
  Future<void> buildIndexFromPaths(
      {required List<String> paths, required String indexPath, dynamic hint}) {
    return handler.executeNormal(NormalTask(
      callFfi: (port_) {
        final serializer = SseSerializer(generalizedFrbRustBinding);
        sse_encode_list_String(paths, serializer);
        sse_encode_String(indexPath, serializer);
        pdeCallFfi(generalizedFrbRustBinding, serializer,
            funcId: 6, port: port_);
      },
      codec: SseCodec(
        decodeSuccessData: sse_decode_unit,
        decodeErrorData: null,
      ),
      constMeta: kBuildIndexFromPathsConstMeta,
      argValues: [paths, indexPath],
      apiImpl: this,
      hint: hint,
    ));
  }

  TaskConstMeta get kBuildIndexFromPathsConstMeta => const TaskConstMeta(
        debugName: "build_index_from_paths",
        argNames: ["paths", "indexPath"],
      );

  @override
  Future<Uint8List?> loadCoverBytes({required String path, dynamic hint}) {
    return handler.executeNormal(NormalTask(
      callFfi: (port_) {
        final serializer = SseSerializer(generalizedFrbRustBinding);
        sse_encode_String(path, serializer);
        pdeCallFfi(generalizedFrbRustBinding, serializer,
            funcId: 10, port: port_);
      },
      codec: SseCodec(
        decodeSuccessData: sse_decode_opt_list_prim_u_8_strict,
        decodeErrorData: null,
      ),
      constMeta: kLoadCoverBytesConstMeta,
      argValues: [path],
      apiImpl: this,
      hint: hint,
    ));
  }

  TaskConstMeta get kLoadCoverBytesConstMeta => const TaskConstMeta(
        debugName: "load_cover_bytes",
        argNames: ["path"],
      );

  @override
  Future<String?> loadLyricFromFlac({required String path, dynamic hint}) {
    return handler.executeNormal(NormalTask(
      callFfi: (port_) {
        final serializer = SseSerializer(generalizedFrbRustBinding);
        sse_encode_String(path, serializer);
        pdeCallFfi(generalizedFrbRustBinding, serializer,
            funcId: 8, port: port_);
      },
      codec: SseCodec(
        decodeSuccessData: sse_decode_opt_String,
        decodeErrorData: null,
      ),
      constMeta: kLoadLyricFromFlacConstMeta,
      argValues: [path],
      apiImpl: this,
      hint: hint,
    ));
  }

  TaskConstMeta get kLoadLyricFromFlacConstMeta => const TaskConstMeta(
        debugName: "load_lyric_from_flac",
        argNames: ["path"],
      );

  @override
  Future<String?> loadLyricFromLrc({required String path, dynamic hint}) {
    return handler.executeNormal(NormalTask(
      callFfi: (port_) {
        final serializer = SseSerializer(generalizedFrbRustBinding);
        sse_encode_String(path, serializer);
        pdeCallFfi(generalizedFrbRustBinding, serializer,
            funcId: 9, port: port_);
      },
      codec: SseCodec(
        decodeSuccessData: sse_decode_opt_String,
        decodeErrorData: null,
      ),
      constMeta: kLoadLyricFromLrcConstMeta,
      argValues: [path],
      apiImpl: this,
      hint: hint,
    ));
  }

  TaskConstMeta get kLoadLyricFromLrcConstMeta => const TaskConstMeta(
        debugName: "load_lyric_from_lrc",
        argNames: ["path"],
      );

  @override
  Future<String?> loadLyricFromMp3({required String path, dynamic hint}) {
    return handler.executeNormal(NormalTask(
      callFfi: (port_) {
        final serializer = SseSerializer(generalizedFrbRustBinding);
        sse_encode_String(path, serializer);
        pdeCallFfi(generalizedFrbRustBinding, serializer,
            funcId: 7, port: port_);
      },
      codec: SseCodec(
        decodeSuccessData: sse_decode_opt_String,
        decodeErrorData: null,
      ),
      constMeta: kLoadLyricFromMp3ConstMeta,
      argValues: [path],
      apiImpl: this,
      hint: hint,
    ));
  }

  TaskConstMeta get kLoadLyricFromMp3ConstMeta => const TaskConstMeta(
        debugName: "load_lyric_from_mp3",
        argNames: ["path"],
      );

  @override
  Future<void> updateIndex({required String indexPath, dynamic hint}) {
    return handler.executeNormal(NormalTask(
      callFfi: (port_) {
        final serializer = SseSerializer(generalizedFrbRustBinding);
        sse_encode_String(indexPath, serializer);
        pdeCallFfi(generalizedFrbRustBinding, serializer,
            funcId: 11, port: port_);
      },
      codec: SseCodec(
        decodeSuccessData: sse_decode_unit,
        decodeErrorData: null,
      ),
      constMeta: kUpdateIndexConstMeta,
      argValues: [indexPath],
      apiImpl: this,
      hint: hint,
    ));
  }

  TaskConstMeta get kUpdateIndexConstMeta => const TaskConstMeta(
        debugName: "update_index",
        argNames: ["indexPath"],
      );

  RustArcIncrementStrongCountFnType
      get rust_arc_increment_strong_count_SmtcFlutter => wire
          .rust_arc_increment_strong_count_RustOpaque_flutter_rust_bridgefor_generatedrust_asyncRwLockSMTCFlutter;

  RustArcDecrementStrongCountFnType
      get rust_arc_decrement_strong_count_SmtcFlutter => wire
          .rust_arc_decrement_strong_count_RustOpaque_flutter_rust_bridgefor_generatedrust_asyncRwLockSMTCFlutter;

  @protected
  SmtcFlutter
      dco_decode_Auto_Owned_RustOpaque_flutter_rust_bridgefor_generatedrust_asyncRwLockSMTCFlutter(
          dynamic raw) {
    // Codec=Dco (DartCObject based), see doc to use other codecs
    return SmtcFlutter.dcoDecode(raw as List<dynamic>);
  }

  @protected
  SmtcFlutter
      dco_decode_Auto_Ref_RustOpaque_flutter_rust_bridgefor_generatedrust_asyncRwLockSMTCFlutter(
          dynamic raw) {
    // Codec=Dco (DartCObject based), see doc to use other codecs
    return SmtcFlutter.dcoDecode(raw as List<dynamic>);
  }

  @protected
  SmtcFlutter
      dco_decode_RustOpaque_flutter_rust_bridgefor_generatedrust_asyncRwLockSMTCFlutter(
          dynamic raw) {
    // Codec=Dco (DartCObject based), see doc to use other codecs
    return SmtcFlutter.dcoDecode(raw as List<dynamic>);
  }

  @protected
  RustStreamSink<SMTCControlEvent> dco_decode_StreamSink_smtc_control_event_Sse(
      dynamic raw) {
    // Codec=Dco (DartCObject based), see doc to use other codecs
    throw UnimplementedError();
  }

  @protected
  String dco_decode_String(dynamic raw) {
    // Codec=Dco (DartCObject based), see doc to use other codecs
    return raw as String;
  }

  @protected
  int dco_decode_i_32(dynamic raw) {
    // Codec=Dco (DartCObject based), see doc to use other codecs
    return raw as int;
  }

  @protected
  List<String> dco_decode_list_String(dynamic raw) {
    // Codec=Dco (DartCObject based), see doc to use other codecs
    return (raw as List<dynamic>).map(dco_decode_String).toList();
  }

  @protected
  Uint8List dco_decode_list_prim_u_8_strict(dynamic raw) {
    // Codec=Dco (DartCObject based), see doc to use other codecs
    return raw as Uint8List;
  }

  @protected
  String? dco_decode_opt_String(dynamic raw) {
    // Codec=Dco (DartCObject based), see doc to use other codecs
    return raw == null ? null : dco_decode_String(raw);
  }

  @protected
  Uint8List? dco_decode_opt_list_prim_u_8_strict(dynamic raw) {
    // Codec=Dco (DartCObject based), see doc to use other codecs
    return raw == null ? null : dco_decode_list_prim_u_8_strict(raw);
  }

  @protected
  SMTCControlEvent dco_decode_smtc_control_event(dynamic raw) {
    // Codec=Dco (DartCObject based), see doc to use other codecs
    return SMTCControlEvent.values[raw as int];
  }

  @protected
  SMTCState dco_decode_smtc_state(dynamic raw) {
    // Codec=Dco (DartCObject based), see doc to use other codecs
    return SMTCState.values[raw as int];
  }

  @protected
  int dco_decode_u_8(dynamic raw) {
    // Codec=Dco (DartCObject based), see doc to use other codecs
    return raw as int;
  }

  @protected
  void dco_decode_unit(dynamic raw) {
    // Codec=Dco (DartCObject based), see doc to use other codecs
    return;
  }

  @protected
  int dco_decode_usize(dynamic raw) {
    // Codec=Dco (DartCObject based), see doc to use other codecs
    return dcoDecodeI64OrU64(raw);
  }

  @protected
  SmtcFlutter
      sse_decode_Auto_Owned_RustOpaque_flutter_rust_bridgefor_generatedrust_asyncRwLockSMTCFlutter(
          SseDeserializer deserializer) {
    // Codec=Sse (Serialization based), see doc to use other codecs
    return SmtcFlutter.sseDecode(
        sse_decode_usize(deserializer), sse_decode_i_32(deserializer));
  }

  @protected
  SmtcFlutter
      sse_decode_Auto_Ref_RustOpaque_flutter_rust_bridgefor_generatedrust_asyncRwLockSMTCFlutter(
          SseDeserializer deserializer) {
    // Codec=Sse (Serialization based), see doc to use other codecs
    return SmtcFlutter.sseDecode(
        sse_decode_usize(deserializer), sse_decode_i_32(deserializer));
  }

  @protected
  SmtcFlutter
      sse_decode_RustOpaque_flutter_rust_bridgefor_generatedrust_asyncRwLockSMTCFlutter(
          SseDeserializer deserializer) {
    // Codec=Sse (Serialization based), see doc to use other codecs
    return SmtcFlutter.sseDecode(
        sse_decode_usize(deserializer), sse_decode_i_32(deserializer));
  }

  @protected
  RustStreamSink<SMTCControlEvent> sse_decode_StreamSink_smtc_control_event_Sse(
      SseDeserializer deserializer) {
    // Codec=Sse (Serialization based), see doc to use other codecs
    throw UnimplementedError('Unreachable ()');
  }

  @protected
  String sse_decode_String(SseDeserializer deserializer) {
    // Codec=Sse (Serialization based), see doc to use other codecs
    var inner = sse_decode_list_prim_u_8_strict(deserializer);
    return utf8.decoder.convert(inner);
  }

  @protected
  int sse_decode_i_32(SseDeserializer deserializer) {
    // Codec=Sse (Serialization based), see doc to use other codecs
    return deserializer.buffer.getInt32();
  }

  @protected
  List<String> sse_decode_list_String(SseDeserializer deserializer) {
    // Codec=Sse (Serialization based), see doc to use other codecs

    var len_ = sse_decode_i_32(deserializer);
    var ans_ = <String>[];
    for (var idx_ = 0; idx_ < len_; ++idx_) {
      ans_.add(sse_decode_String(deserializer));
    }
    return ans_;
  }

  @protected
  Uint8List sse_decode_list_prim_u_8_strict(SseDeserializer deserializer) {
    // Codec=Sse (Serialization based), see doc to use other codecs
    var len_ = sse_decode_i_32(deserializer);
    return deserializer.buffer.getUint8List(len_);
  }

  @protected
  String? sse_decode_opt_String(SseDeserializer deserializer) {
    // Codec=Sse (Serialization based), see doc to use other codecs

    if (sse_decode_bool(deserializer)) {
      return (sse_decode_String(deserializer));
    } else {
      return null;
    }
  }

  @protected
  Uint8List? sse_decode_opt_list_prim_u_8_strict(SseDeserializer deserializer) {
    // Codec=Sse (Serialization based), see doc to use other codecs

    if (sse_decode_bool(deserializer)) {
      return (sse_decode_list_prim_u_8_strict(deserializer));
    } else {
      return null;
    }
  }

  @protected
  SMTCControlEvent sse_decode_smtc_control_event(SseDeserializer deserializer) {
    // Codec=Sse (Serialization based), see doc to use other codecs
    var inner = sse_decode_i_32(deserializer);
    return SMTCControlEvent.values[inner];
  }

  @protected
  SMTCState sse_decode_smtc_state(SseDeserializer deserializer) {
    // Codec=Sse (Serialization based), see doc to use other codecs
    var inner = sse_decode_i_32(deserializer);
    return SMTCState.values[inner];
  }

  @protected
  int sse_decode_u_8(SseDeserializer deserializer) {
    // Codec=Sse (Serialization based), see doc to use other codecs
    return deserializer.buffer.getUint8();
  }

  @protected
  void sse_decode_unit(SseDeserializer deserializer) {
    // Codec=Sse (Serialization based), see doc to use other codecs
  }

  @protected
  int sse_decode_usize(SseDeserializer deserializer) {
    // Codec=Sse (Serialization based), see doc to use other codecs
    return deserializer.buffer.getUint64();
  }

  @protected
  bool sse_decode_bool(SseDeserializer deserializer) {
    // Codec=Sse (Serialization based), see doc to use other codecs
    return deserializer.buffer.getUint8() != 0;
  }

  @protected
  void
      sse_encode_Auto_Owned_RustOpaque_flutter_rust_bridgefor_generatedrust_asyncRwLockSMTCFlutter(
          SmtcFlutter self, SseSerializer serializer) {
    // Codec=Sse (Serialization based), see doc to use other codecs
    sse_encode_usize(self.sseEncode(move: true), serializer);
  }

  @protected
  void
      sse_encode_Auto_Ref_RustOpaque_flutter_rust_bridgefor_generatedrust_asyncRwLockSMTCFlutter(
          SmtcFlutter self, SseSerializer serializer) {
    // Codec=Sse (Serialization based), see doc to use other codecs
    sse_encode_usize(self.sseEncode(move: false), serializer);
  }

  @protected
  void
      sse_encode_RustOpaque_flutter_rust_bridgefor_generatedrust_asyncRwLockSMTCFlutter(
          SmtcFlutter self, SseSerializer serializer) {
    // Codec=Sse (Serialization based), see doc to use other codecs
    sse_encode_usize(self.sseEncode(move: null), serializer);
  }

  @protected
  void sse_encode_StreamSink_smtc_control_event_Sse(
      RustStreamSink<SMTCControlEvent> self, SseSerializer serializer) {
    // Codec=Sse (Serialization based), see doc to use other codecs
    sse_encode_String(
        self.setupAndSerialize(
            codec: SseCodec(
                decodeSuccessData: sse_decode_smtc_control_event,
                decodeErrorData: null)),
        serializer);
  }

  @protected
  void sse_encode_String(String self, SseSerializer serializer) {
    // Codec=Sse (Serialization based), see doc to use other codecs
    sse_encode_list_prim_u_8_strict(utf8.encoder.convert(self), serializer);
  }

  @protected
  void sse_encode_i_32(int self, SseSerializer serializer) {
    // Codec=Sse (Serialization based), see doc to use other codecs
    serializer.buffer.putInt32(self);
  }

  @protected
  void sse_encode_list_String(List<String> self, SseSerializer serializer) {
    // Codec=Sse (Serialization based), see doc to use other codecs
    sse_encode_i_32(self.length, serializer);
    for (final item in self) {
      sse_encode_String(item, serializer);
    }
  }

  @protected
  void sse_encode_list_prim_u_8_strict(
      Uint8List self, SseSerializer serializer) {
    // Codec=Sse (Serialization based), see doc to use other codecs
    sse_encode_i_32(self.length, serializer);
    serializer.buffer.putUint8List(self);
  }

  @protected
  void sse_encode_opt_String(String? self, SseSerializer serializer) {
    // Codec=Sse (Serialization based), see doc to use other codecs

    sse_encode_bool(self != null, serializer);
    if (self != null) {
      sse_encode_String(self, serializer);
    }
  }

  @protected
  void sse_encode_opt_list_prim_u_8_strict(
      Uint8List? self, SseSerializer serializer) {
    // Codec=Sse (Serialization based), see doc to use other codecs

    sse_encode_bool(self != null, serializer);
    if (self != null) {
      sse_encode_list_prim_u_8_strict(self, serializer);
    }
  }

  @protected
  void sse_encode_smtc_control_event(
      SMTCControlEvent self, SseSerializer serializer) {
    // Codec=Sse (Serialization based), see doc to use other codecs
    sse_encode_i_32(self.index, serializer);
  }

  @protected
  void sse_encode_smtc_state(SMTCState self, SseSerializer serializer) {
    // Codec=Sse (Serialization based), see doc to use other codecs
    sse_encode_i_32(self.index, serializer);
  }

  @protected
  void sse_encode_u_8(int self, SseSerializer serializer) {
    // Codec=Sse (Serialization based), see doc to use other codecs
    serializer.buffer.putUint8(self);
  }

  @protected
  void sse_encode_unit(void self, SseSerializer serializer) {
    // Codec=Sse (Serialization based), see doc to use other codecs
  }

  @protected
  void sse_encode_usize(int self, SseSerializer serializer) {
    // Codec=Sse (Serialization based), see doc to use other codecs
    serializer.buffer.putUint64(self);
  }

  @protected
  void sse_encode_bool(bool self, SseSerializer serializer) {
    // Codec=Sse (Serialization based), see doc to use other codecs
    serializer.buffer.putUint8(self ? 1 : 0);
  }
}
