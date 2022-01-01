module reg_input (
  input               clk,    // Clock
  input               rst_n,  // Asynchronous reset active low
  input      [7:0]    button_up,
  input               button_up_we,
  input      [7:0]    button_down,
  input               button_down_we,
  input               button_close,
  input               button_close_we,
  input               button_open,
  input               button_open_we,
  input      [7:0]    button_select_floor,
  input               button_select_floor_we,
  input      [7:0]    floor_sensor,
  input               floor_sensor_we,
  input               overweight_alert,
  input               overweight_alert_we,
  input               fire_alert,
  input               fire_alert_we,
  output reg [7:0]    button_up_ff,
  output reg [7:0]    button_down_ff,
  output reg          button_close_ff,
  output reg          button_open_ff,
  output reg [7:0]    button_select_floor_ff,
  output reg [7:0]    floor_sensor_ff,
  output reg          overweight_alert_ff,
  output reg          fire_alert_ff
);

always @(posedge clk or negedge rst_n) begin
  if(~rst_n) begin
    button_up_ff        <= 0;
  end else if (button_up_we) begin
    button_up_ff        <= button_up;
  end
end

always @(posedge clk or negedge rst_n) begin
  if(~rst_n) begin
    button_down_ff         <= 0;
  end else if (button_down_we) begin
    button_down_ff         <= button_down;
  end
end

always @(posedge clk or negedge rst_n) begin
  if(~rst_n) begin
    button_select_floor_ff <= 0;
  end else if (button_select_floor_we) begin
    button_select_floor_ff <= button_select_floor;
  end
end

always @(posedge clk or negedge rst_n) begin
  if(~rst_n) begin
    floor_sensor_ff        <= 0;
  end else if (floor_sensor_we) begin
    floor_sensor_ff        <= floor_sensor;
  end
end

always @(posedge clk or negedge rst_n) begin
  if(~rst_n) begin
    button_close_ff        <= 0;
  end else if (button_close_we) begin
    button_close_ff        <= button_close;
  end
end

always @(posedge clk or negedge rst_n) begin
  if(~rst_n) begin
    button_open_ff         <= 0;
  end else if (button_open_we) begin
    button_open_ff         <= button_open;
  end
end

always @(posedge clk or negedge rst_n) begin
  if(~rst_n) begin
    overweight_alert_ff    <= 0;
  end else if (overweight_alert_we) begin
    overweight_alert_ff    <= overweight_alert;
  end
end

always @(posedge clk or negedge rst_n) begin
  if(~rst_n) begin
    fire_alert_ff          <= 0;
  end else if (fire_alert_we) begin
    fire_alert_ff          <= fire_alert;
  end
end

endmodule