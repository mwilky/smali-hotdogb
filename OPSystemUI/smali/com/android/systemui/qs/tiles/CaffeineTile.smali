.class public Lcom/android/systemui/qs/tiles/CaffeineTile;
.super Lcom/android/systemui/qs/tileimpl/QSTileImpl;
.source "CaffeineTile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/qs/tiles/CaffeineTile$Receiver;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/systemui/qs/tileimpl/QSTileImpl<",
        "Lcom/android/systemui/plugins/qs/QSTile$BooleanState;",
        ">;"
    }
.end annotation


# static fields
.field private static DURATIONS:[I

.field private static mDurationEgg:I


# instance fields
.field private mCountdownTimer:Landroid/os/CountDownTimer;

.field private mDuration:I

.field public mLastClickTime:J

.field private final mReceiver:Lcom/android/systemui/qs/tiles/CaffeineTile$Receiver;

.field private mSecondsRemaining:I

.field private final mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 44
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/systemui/qs/tiles/CaffeineTile;->DURATIONS:[I

    .line 50
    const/16 v0, 0x159

    sput v0, Lcom/android/systemui/qs/tiles/CaffeineTile;->mDurationEgg:I

    return-void

    nop

    :array_0
    .array-data 4
        0x12c
        0x258
        0x708
        -0x1
    .end array-data
.end method

.method public constructor <init>(Lcom/android/systemui/qs/QSHost;)V
    .locals 2

    .line 57
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;-><init>(Lcom/android/systemui/qs/QSHost;)V

    .line 51
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/CaffeineTile;->mCountdownTimer:Landroid/os/CountDownTimer;

    .line 52
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/systemui/qs/tiles/CaffeineTile;->mLastClickTime:J

    .line 53
    new-instance v0, Lcom/android/systemui/qs/tiles/CaffeineTile$Receiver;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/qs/tiles/CaffeineTile$Receiver;-><init>(Lcom/android/systemui/qs/tiles/CaffeineTile;Lcom/android/systemui/qs/tiles/CaffeineTile$1;)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/CaffeineTile;->mReceiver:Lcom/android/systemui/qs/tiles/CaffeineTile$Receiver;

    .line 58
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/CaffeineTile;->mContext:Landroid/content/Context;

    const-string v0, "power"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/PowerManager;

    const-string v0, "CaffeineTile"

    const/16 v1, 0x1a

    invoke-virtual {p1, v1, v0}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/CaffeineTile;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 60
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/CaffeineTile;->mReceiver:Lcom/android/systemui/qs/tiles/CaffeineTile$Receiver;

    invoke-virtual {p1}, Lcom/android/systemui/qs/tiles/CaffeineTile$Receiver;->init()V

    .line 61
    return-void
.end method

.method static synthetic access$102(Lcom/android/systemui/qs/tiles/CaffeineTile;I)I
    .locals 0

    .line 39
    iput p1, p0, Lcom/android/systemui/qs/tiles/CaffeineTile;->mSecondsRemaining:I

    return p1
.end method

.method static synthetic access$200(Lcom/android/systemui/qs/tiles/CaffeineTile;)Landroid/os/PowerManager$WakeLock;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/CaffeineTile;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/systemui/qs/tiles/CaffeineTile;)Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/CaffeineTile;->mHandler:Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/systemui/qs/tiles/CaffeineTile;)Landroid/content/Context;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/CaffeineTile;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$500(Lcom/android/systemui/qs/tiles/CaffeineTile;)Landroid/content/Context;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/CaffeineTile;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$600(Lcom/android/systemui/qs/tiles/CaffeineTile;)V
    .locals 0

    .line 39
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/CaffeineTile;->stopCountDown()V

    return-void
.end method

.method private formatValueWithRemainingTime()Ljava/lang/String;
    .locals 4

    .line 183
    iget v0, p0, Lcom/android/systemui/qs/tiles/CaffeineTile;->mSecondsRemaining:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 184
    const-string v0, "\u221e"

    return-object v0

    .line 186
    :cond_0
    const-string v0, "%02d:%02d"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Lcom/android/systemui/qs/tiles/CaffeineTile;->mSecondsRemaining:I

    div-int/lit8 v3, v3, 0x3c

    rem-int/lit8 v3, v3, 0x3c

    .line 187
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget v3, p0, Lcom/android/systemui/qs/tiles/CaffeineTile;->mSecondsRemaining:I

    rem-int/lit8 v3, v3, 0x3c

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    .line 186
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private startCountDown(J)V
    .locals 7

    .line 151
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/CaffeineTile;->stopCountDown()V

    .line 152
    long-to-int v0, p1

    iput v0, p0, Lcom/android/systemui/qs/tiles/CaffeineTile;->mSecondsRemaining:I

    .line 153
    const-wide/16 v0, -0x1

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    .line 155
    return-void

    .line 157
    :cond_0
    new-instance v0, Lcom/android/systemui/qs/tiles/CaffeineTile$1;

    const-wide/16 v1, 0x3e8

    mul-long v3, p1, v1

    const-wide/16 v5, 0x3e8

    move-object v1, v0

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/systemui/qs/tiles/CaffeineTile$1;-><init>(Lcom/android/systemui/qs/tiles/CaffeineTile;JJ)V

    .line 172
    invoke-virtual {v0}, Lcom/android/systemui/qs/tiles/CaffeineTile$1;->start()Landroid/os/CountDownTimer;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/CaffeineTile;->mCountdownTimer:Landroid/os/CountDownTimer;

    .line 173
    return-void
.end method

.method private stopCountDown()V
    .locals 1

    .line 176
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/CaffeineTile;->mCountdownTimer:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_0

    .line 177
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/CaffeineTile;->mCountdownTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 178
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/CaffeineTile;->mCountdownTimer:Landroid/os/CountDownTimer;

    .line 180
    :cond_0
    return-void
.end method


# virtual methods
.method public getLongClickIntent()Landroid/content/Intent;
    .locals 1

    .line 137
    const/4 v0, 0x0

    return-object v0
.end method

.method public getMetricsCategory()I
    .locals 1

    .line 147
    const/16 v0, 0x2329

    return v0
.end method

.method public getTileLabel()Ljava/lang/CharSequence;
    .locals 4

    .line 142
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/CaffeineTile;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "quick_settings_caffeine_label"

    const-string v3, "string"

    invoke-static {v2, v3}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public handleClick()V
    .locals 4

    .line 87
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/CaffeineTile;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-wide v0, p0, Lcom/android/systemui/qs/tiles/CaffeineTile;->mLastClickTime:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 88
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/systemui/qs/tiles/CaffeineTile;->mLastClickTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x1388

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    .line 90
    iget v0, p0, Lcom/android/systemui/qs/tiles/CaffeineTile;->mDuration:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/systemui/qs/tiles/CaffeineTile;->mDuration:I

    .line 91
    iget v0, p0, Lcom/android/systemui/qs/tiles/CaffeineTile;->mDuration:I

    sget-object v1, Lcom/android/systemui/qs/tiles/CaffeineTile;->DURATIONS:[I

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .line 93
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/qs/tiles/CaffeineTile;->mDuration:I

    .line 94
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/CaffeineTile;->stopCountDown()V

    .line 95
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/CaffeineTile;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 96
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/CaffeineTile;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_0

    .line 100
    :cond_0
    sget-object v0, Lcom/android/systemui/qs/tiles/CaffeineTile;->DURATIONS:[I

    iget v1, p0, Lcom/android/systemui/qs/tiles/CaffeineTile;->mDuration:I

    aget v0, v0, v1

    int-to-long v0, v0

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/qs/tiles/CaffeineTile;->startCountDown(J)V

    .line 101
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/CaffeineTile;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-nez v0, :cond_3

    .line 102
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/CaffeineTile;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    goto :goto_0

    .line 107
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/CaffeineTile;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 108
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/CaffeineTile;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 109
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/CaffeineTile;->stopCountDown()V

    goto :goto_0

    .line 111
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/CaffeineTile;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 112
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/qs/tiles/CaffeineTile;->mDuration:I

    .line 113
    sget-object v0, Lcom/android/systemui/qs/tiles/CaffeineTile;->DURATIONS:[I

    iget v1, p0, Lcom/android/systemui/qs/tiles/CaffeineTile;->mDuration:I

    aget v0, v0, v1

    int-to-long v0, v0

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/qs/tiles/CaffeineTile;->startCountDown(J)V

    .line 116
    :cond_3
    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/systemui/qs/tiles/CaffeineTile;->mLastClickTime:J

    .line 117
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/CaffeineTile;->refreshState()V

    .line 118
    return-void
.end method

.method protected handleDestroy()V
    .locals 1

    .line 70
    invoke-super {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->handleDestroy()V

    .line 71
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/CaffeineTile;->stopCountDown()V

    .line 72
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/CaffeineTile;->mReceiver:Lcom/android/systemui/qs/tiles/CaffeineTile$Receiver;

    invoke-virtual {v0}, Lcom/android/systemui/qs/tiles/CaffeineTile$Receiver;->destroy()V

    .line 73
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/CaffeineTile;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 74
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/CaffeineTile;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 76
    :cond_0
    return-void
.end method

.method protected handleLongClick()V
    .locals 2

    .line 122
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/CaffeineTile;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-nez v0, :cond_0

    .line 123
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/CaffeineTile;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 124
    sget v0, Lcom/android/systemui/qs/tiles/CaffeineTile;->mDurationEgg:I

    int-to-long v0, v0

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/qs/tiles/CaffeineTile;->startCountDown(J)V

    goto :goto_0

    .line 126
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/CaffeineTile;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 127
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/CaffeineTile;->stopCountDown()V

    .line 129
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/qs/tiles/CaffeineTile;->mDuration:I

    .line 131
    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/systemui/qs/tiles/CaffeineTile;->mLastClickTime:J

    .line 132
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/CaffeineTile;->refreshState()V

    .line 133
    return-void
.end method

.method public handleSetListening(Z)V
    .locals 0

    .line 80
    return-void
.end method

.method protected handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$BooleanState;Ljava/lang/Object;)V
    .locals 5

    .line 192
    iget-object p2, p0, Lcom/android/systemui/qs/tiles/CaffeineTile;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p2}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result p2

    iput-boolean p2, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    .line 193
    iget-boolean p2, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    if-eqz p2, :cond_0

    .line 194
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/CaffeineTile;->formatValueWithRemainingTime()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->label:Ljava/lang/CharSequence;

    .line 195
    const-string/jumbo v3, "ic_qs_caffeine_on"

    const-string v4, "drawable"

    invoke-static {v3, v4}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result p2

    invoke-static {p2}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$ResourceIcon;->get(I)Lcom/android/systemui/plugins/qs/QSTile$Icon;

    move-result-object p2

    iput-object p2, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    .line 196
    iget-object p2, p0, Lcom/android/systemui/qs/tiles/CaffeineTile;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "accessibility_quick_settings_caffeine_on"

    const-string v4, "string"

    invoke-static {v3, v4}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->contentDescription:Ljava/lang/CharSequence;

    .line 198
    const/4 p2, 0x2

    iput p2, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->state:I

    goto :goto_0

    .line 200
    :cond_0
    iget-object p2, p0, Lcom/android/systemui/qs/tiles/CaffeineTile;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "quick_settings_caffeine_label"

    const-string v4, "string"

    invoke-static {v3, v4}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->label:Ljava/lang/CharSequence;

    .line 201
    const-string/jumbo v3, "ic_qs_caffeine_off"

    const-string v4, "drawable"

    invoke-static {v3, v4}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result p2

    invoke-static {p2}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$ResourceIcon;->get(I)Lcom/android/systemui/plugins/qs/QSTile$Icon;

    move-result-object p2

    iput-object p2, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    .line 202
    iget-object p2, p0, Lcom/android/systemui/qs/tiles/CaffeineTile;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "accessibility_quick_settings_caffeine_off"

    const-string v4, "string"

    invoke-static {v3, v4}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->contentDescription:Ljava/lang/CharSequence;

    .line 204
    const/4 p2, 0x1

    iput p2, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->state:I

    .line 206
    :goto_0
    return-void
.end method

.method protected bridge synthetic handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$State;Ljava/lang/Object;)V
    .locals 0

    .line 39
    check-cast p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/qs/tiles/CaffeineTile;->handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$BooleanState;Ljava/lang/Object;)V

    return-void
.end method

.method public newTileState()Lcom/android/systemui/plugins/qs/QSTile$BooleanState;
    .locals 1

    .line 65
    new-instance v0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    invoke-direct {v0}, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;-><init>()V

    return-object v0
.end method

.method public bridge synthetic newTileState()Lcom/android/systemui/plugins/qs/QSTile$State;
    .locals 1

    .line 39
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/CaffeineTile;->newTileState()Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    move-result-object v0

    return-object v0
.end method

.method public isAvailable()Z
    .locals 1

    .prologue
    .line 159
    const/4 v0, 0x1

    return v0
.end method
