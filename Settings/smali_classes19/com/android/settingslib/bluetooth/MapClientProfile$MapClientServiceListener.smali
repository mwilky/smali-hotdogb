.class final Lcom/android/settingslib/bluetooth/MapClientProfile$MapClientServiceListener;
.super Ljava/lang/Object;
.source "MapClientProfile.java"

# interfaces
.implements Landroid/bluetooth/BluetoothProfile$ServiceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settingslib/bluetooth/MapClientProfile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MapClientServiceListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settingslib/bluetooth/MapClientProfile;


# direct methods
.method private constructor <init>(Lcom/android/settingslib/bluetooth/MapClientProfile;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settingslib/bluetooth/MapClientProfile$MapClientServiceListener;->this$0:Lcom/android/settingslib/bluetooth/MapClientProfile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settingslib/bluetooth/MapClientProfile;Lcom/android/settingslib/bluetooth/MapClientProfile$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settingslib/bluetooth/MapClientProfile$MapClientServiceListener;-><init>(Lcom/android/settingslib/bluetooth/MapClientProfile;)V

    return-void
.end method


# virtual methods
.method public onServiceConnected(ILandroid/bluetooth/BluetoothProfile;)V
    .locals 5

    iget-object v0, p0, Lcom/android/settingslib/bluetooth/MapClientProfile$MapClientServiceListener;->this$0:Lcom/android/settingslib/bluetooth/MapClientProfile;

    move-object v1, p2

    check-cast v1, Landroid/bluetooth/BluetoothMapClient;

    invoke-static {v0, v1}, Lcom/android/settingslib/bluetooth/MapClientProfile;->access$002(Lcom/android/settingslib/bluetooth/MapClientProfile;Landroid/bluetooth/BluetoothMapClient;)Landroid/bluetooth/BluetoothMapClient;

    iget-object v0, p0, Lcom/android/settingslib/bluetooth/MapClientProfile$MapClientServiceListener;->this$0:Lcom/android/settingslib/bluetooth/MapClientProfile;

    invoke-static {v0}, Lcom/android/settingslib/bluetooth/MapClientProfile;->access$000(Lcom/android/settingslib/bluetooth/MapClientProfile;)Landroid/bluetooth/BluetoothMapClient;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothMapClient;->getConnectedDevices()Ljava/util/List;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    iget-object v2, p0, Lcom/android/settingslib/bluetooth/MapClientProfile$MapClientServiceListener;->this$0:Lcom/android/settingslib/bluetooth/MapClientProfile;

    invoke-static {v2}, Lcom/android/settingslib/bluetooth/MapClientProfile;->access$100(Lcom/android/settingslib/bluetooth/MapClientProfile;)Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->findDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object v2

    if-nez v2, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MapProfile found new device: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "MapClientProfile"

    invoke-static {v4, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/settingslib/bluetooth/MapClientProfile$MapClientServiceListener;->this$0:Lcom/android/settingslib/bluetooth/MapClientProfile;

    invoke-static {v3}, Lcom/android/settingslib/bluetooth/MapClientProfile;->access$100(Lcom/android/settingslib/bluetooth/MapClientProfile;)Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->addDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object v2

    :cond_0
    iget-object v3, p0, Lcom/android/settingslib/bluetooth/MapClientProfile$MapClientServiceListener;->this$0:Lcom/android/settingslib/bluetooth/MapClientProfile;

    const/4 v4, 0x2

    invoke-virtual {v2, v3, v4}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->onProfileStateChanged(Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;I)V

    invoke-virtual {v2}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->refresh()V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/settingslib/bluetooth/MapClientProfile$MapClientServiceListener;->this$0:Lcom/android/settingslib/bluetooth/MapClientProfile;

    invoke-static {v1}, Lcom/android/settingslib/bluetooth/MapClientProfile;->access$200(Lcom/android/settingslib/bluetooth/MapClientProfile;)Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->callServiceConnectedListeners()V

    iget-object v1, p0, Lcom/android/settingslib/bluetooth/MapClientProfile$MapClientServiceListener;->this$0:Lcom/android/settingslib/bluetooth/MapClientProfile;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/android/settingslib/bluetooth/MapClientProfile;->access$302(Lcom/android/settingslib/bluetooth/MapClientProfile;Z)Z

    return-void
.end method

.method public onServiceDisconnected(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/settingslib/bluetooth/MapClientProfile$MapClientServiceListener;->this$0:Lcom/android/settingslib/bluetooth/MapClientProfile;

    invoke-static {v0}, Lcom/android/settingslib/bluetooth/MapClientProfile;->access$200(Lcom/android/settingslib/bluetooth/MapClientProfile;)Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->callServiceDisconnectedListeners()V

    iget-object v0, p0, Lcom/android/settingslib/bluetooth/MapClientProfile$MapClientServiceListener;->this$0:Lcom/android/settingslib/bluetooth/MapClientProfile;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/settingslib/bluetooth/MapClientProfile;->access$302(Lcom/android/settingslib/bluetooth/MapClientProfile;Z)Z

    return-void
.end method
