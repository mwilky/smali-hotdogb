.class public Lcom/android/settings/notification/NotificationVolumePreferenceController;
.super Lcom/android/settings/notification/RingVolumePreferenceController;
.source "NotificationVolumePreferenceController.java"


# static fields
.field private static final KEY_NOTIFICATION_VOLUME:Ljava/lang/String; = "notification_volume"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "notification_volume"

    invoke-direct {p0, p1, v0}, Lcom/android/settings/notification/RingVolumePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getAudioStream()I
    .locals 1

    const/4 v0, 0x5

    return v0
.end method

.method public getAvailabilityStatus()I
    .registers 5

    .line 18
    iget-object v0, p0, Lcom/android/settings/notification/NotificationVolumePreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 19
    .local v0, "ContentResolver":Landroid/content/ContentResolver;
    const/4 v1, 0x0

    const-string v2, "tweaks_unlink_volume"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 20
    .local v2, "isUnlinked":I
    const/4 v3, 0x1

    if-ne v2, v3, :cond_11

    .line 21
    return v1

    .line 23
    :cond_11
    const/4 v1, 0x3

    return v1
.end method


.method public getMuteIcon()I
    .locals 1

    const v0, 0x7f0802d4

    return v0
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    const-string v0, "notification_volume"

    return-object v0
.end method

.method public isSliceable()Z
    .locals 2

    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationVolumePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "notification_volume"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method
