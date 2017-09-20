# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: krpc.proto

require 'google/protobuf'

Google::Protobuf::DescriptorPool.generated_pool.build do
  add_message "krpc.schema.ConnectionRequest" do
    optional :type, :enum, 1, "krpc.schema.ConnectionRequest.Type"
    optional :client_name, :string, 2
    optional :client_identifier, :bytes, 3
  end
  add_enum "krpc.schema.ConnectionRequest.Type" do
    value :RPC, 0
    value :STREAM, 1
  end
  add_message "krpc.schema.ConnectionResponse" do
    optional :status, :enum, 1, "krpc.schema.ConnectionResponse.Status"
    optional :message, :string, 2
    optional :client_identifier, :bytes, 3
  end
  add_enum "krpc.schema.ConnectionResponse.Status" do
    value :OK, 0
    value :MALFORMED_MESSAGE, 1
    value :TIMEOUT, 2
    value :WRONG_TYPE, 3
  end
  add_message "krpc.schema.Request" do
    repeated :calls, :message, 1, "krpc.schema.ProcedureCall"
  end
  add_message "krpc.schema.ProcedureCall" do
    optional :service, :string, 1
    optional :procedure, :string, 2
    repeated :arguments, :message, 3, "krpc.schema.Argument"
  end
  add_message "krpc.schema.Argument" do
    optional :position, :uint32, 1
    optional :value, :bytes, 2
  end
  add_message "krpc.schema.Response" do
    optional :error, :message, 1, "krpc.schema.Error"
    repeated :results, :message, 2, "krpc.schema.ProcedureResult"
  end
  add_message "krpc.schema.ProcedureResult" do
    optional :error, :message, 1, "krpc.schema.Error"
    optional :value, :bytes, 2
  end
  add_message "krpc.schema.Error" do
    optional :service, :string, 1
    optional :name, :string, 2
    optional :description, :string, 3
    optional :stack_trace, :string, 4
  end
  add_message "krpc.schema.StreamUpdate" do
    repeated :results, :message, 1, "krpc.schema.StreamResult"
  end
  add_message "krpc.schema.StreamResult" do
    optional :id, :uint64, 1
    optional :result, :message, 2, "krpc.schema.ProcedureResult"
  end
  add_message "krpc.schema.Services" do
    repeated :services, :message, 1, "krpc.schema.Service"
  end
  add_message "krpc.schema.Service" do
    optional :name, :string, 1
    repeated :procedures, :message, 2, "krpc.schema.Procedure"
    repeated :classes, :message, 3, "krpc.schema.Class"
    repeated :enumerations, :message, 4, "krpc.schema.Enumeration"
    repeated :exceptions, :message, 5, "krpc.schema.Exception"
    optional :documentation, :string, 6
  end
  add_message "krpc.schema.Procedure" do
    optional :name, :string, 1
    repeated :parameters, :message, 2, "krpc.schema.Parameter"
    optional :return_type, :message, 3, "krpc.schema.Type"
    optional :return_is_nullable, :bool, 4
    optional :documentation, :string, 5
  end
  add_message "krpc.schema.Parameter" do
    optional :name, :string, 1
    optional :type, :message, 2, "krpc.schema.Type"
    optional :default_value, :bytes, 3
  end
  add_message "krpc.schema.Class" do
    optional :name, :string, 1
    optional :documentation, :string, 2
  end
  add_message "krpc.schema.Enumeration" do
    optional :name, :string, 1
    repeated :values, :message, 2, "krpc.schema.EnumerationValue"
    optional :documentation, :string, 3
  end
  add_message "krpc.schema.EnumerationValue" do
    optional :name, :string, 1
    optional :value, :int32, 2
    optional :documentation, :string, 3
  end
  add_message "krpc.schema.Exception" do
    optional :name, :string, 1
    optional :documentation, :string, 2
  end
  add_message "krpc.schema.Type" do
    optional :code, :enum, 1, "krpc.schema.Type.TypeCode"
    optional :service, :string, 2
    optional :name, :string, 3
    repeated :types, :message, 4, "krpc.schema.Type"
  end
  add_enum "krpc.schema.Type.TypeCode" do
    value :NONE, 0
    value :DOUBLE, 1
    value :FLOAT, 2
    value :SINT32, 3
    value :SINT64, 4
    value :UINT32, 5
    value :UINT64, 6
    value :BOOL, 7
    value :STRING, 8
    value :BYTES, 9
    value :CLASS, 100
    value :ENUMERATION, 101
    value :PROCEDURE_CALL, 200
    value :STREAM, 201
    value :STATUS, 202
    value :SERVICES, 203
    value :TUPLE, 300
    value :LIST, 301
    value :SET, 302
    value :DICTIONARY, 303
  end
  add_message "krpc.schema.Tuple" do
    repeated :items, :bytes, 1
  end
  add_message "krpc.schema.List" do
    repeated :items, :bytes, 1
  end
  add_message "krpc.schema.Set" do
    repeated :items, :bytes, 1
  end
  add_message "krpc.schema.Dictionary" do
    repeated :entries, :message, 1, "krpc.schema.DictionaryEntry"
  end
  add_message "krpc.schema.DictionaryEntry" do
    optional :key, :bytes, 1
    optional :value, :bytes, 2
  end
  add_message "krpc.schema.Stream" do
    optional :id, :uint64, 1
  end
  add_message "krpc.schema.Status" do
    optional :version, :string, 1
    optional :bytes_read, :uint64, 2
    optional :bytes_written, :uint64, 3
    optional :bytes_read_rate, :float, 4
    optional :bytes_written_rate, :float, 5
    optional :rpcs_executed, :uint64, 6
    optional :rpc_rate, :float, 7
    optional :one_rpc_per_update, :bool, 8
    optional :max_time_per_update, :uint32, 9
    optional :adaptive_rate_control, :bool, 10
    optional :blocking_recv, :bool, 11
    optional :recv_timeout, :uint32, 12
    optional :time_per_rpc_update, :float, 13
    optional :poll_time_per_rpc_update, :float, 14
    optional :exec_time_per_rpc_update, :float, 15
    optional :stream_rpcs, :uint32, 16
    optional :stream_rpcs_executed, :uint64, 17
    optional :stream_rpc_rate, :float, 18
    optional :time_per_stream_update, :float, 19
  end
end

module KRPC
  module PB
    ConnectionRequest = Google::Protobuf::DescriptorPool.generated_pool.lookup("krpc.schema.ConnectionRequest").msgclass
    ConnectionRequest::Type = Google::Protobuf::DescriptorPool.generated_pool.lookup("krpc.schema.ConnectionRequest.Type").enummodule
    ConnectionResponse = Google::Protobuf::DescriptorPool.generated_pool.lookup("krpc.schema.ConnectionResponse").msgclass
    ConnectionResponse::Status = Google::Protobuf::DescriptorPool.generated_pool.lookup("krpc.schema.ConnectionResponse.Status").enummodule
    Request = Google::Protobuf::DescriptorPool.generated_pool.lookup("krpc.schema.Request").msgclass
    ProcedureCall = Google::Protobuf::DescriptorPool.generated_pool.lookup("krpc.schema.ProcedureCall").msgclass
    Argument = Google::Protobuf::DescriptorPool.generated_pool.lookup("krpc.schema.Argument").msgclass
    Response = Google::Protobuf::DescriptorPool.generated_pool.lookup("krpc.schema.Response").msgclass
    ProcedureResult = Google::Protobuf::DescriptorPool.generated_pool.lookup("krpc.schema.ProcedureResult").msgclass
    Error = Google::Protobuf::DescriptorPool.generated_pool.lookup("krpc.schema.Error").msgclass
    StreamUpdate = Google::Protobuf::DescriptorPool.generated_pool.lookup("krpc.schema.StreamUpdate").msgclass
    StreamResult = Google::Protobuf::DescriptorPool.generated_pool.lookup("krpc.schema.StreamResult").msgclass
    Services = Google::Protobuf::DescriptorPool.generated_pool.lookup("krpc.schema.Services").msgclass
    Service = Google::Protobuf::DescriptorPool.generated_pool.lookup("krpc.schema.Service").msgclass
    Procedure = Google::Protobuf::DescriptorPool.generated_pool.lookup("krpc.schema.Procedure").msgclass
    Parameter = Google::Protobuf::DescriptorPool.generated_pool.lookup("krpc.schema.Parameter").msgclass
    Class = Google::Protobuf::DescriptorPool.generated_pool.lookup("krpc.schema.Class").msgclass
    Enumeration = Google::Protobuf::DescriptorPool.generated_pool.lookup("krpc.schema.Enumeration").msgclass
    EnumerationValue = Google::Protobuf::DescriptorPool.generated_pool.lookup("krpc.schema.EnumerationValue").msgclass
    Exception = Google::Protobuf::DescriptorPool.generated_pool.lookup("krpc.schema.Exception").msgclass
    Type = Google::Protobuf::DescriptorPool.generated_pool.lookup("krpc.schema.Type").msgclass
    Type::TypeCode = Google::Protobuf::DescriptorPool.generated_pool.lookup("krpc.schema.Type.TypeCode").enummodule
    Tuple = Google::Protobuf::DescriptorPool.generated_pool.lookup("krpc.schema.Tuple").msgclass
    List = Google::Protobuf::DescriptorPool.generated_pool.lookup("krpc.schema.List").msgclass
    Set = Google::Protobuf::DescriptorPool.generated_pool.lookup("krpc.schema.Set").msgclass
    Dictionary = Google::Protobuf::DescriptorPool.generated_pool.lookup("krpc.schema.Dictionary").msgclass
    DictionaryEntry = Google::Protobuf::DescriptorPool.generated_pool.lookup("krpc.schema.DictionaryEntry").msgclass
    Stream = Google::Protobuf::DescriptorPool.generated_pool.lookup("krpc.schema.Stream").msgclass
    Status = Google::Protobuf::DescriptorPool.generated_pool.lookup("krpc.schema.Status").msgclass
  end
end
