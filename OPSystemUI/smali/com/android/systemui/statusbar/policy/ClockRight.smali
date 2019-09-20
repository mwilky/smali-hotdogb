.class public Lcom/android/systemui/statusbar/policy/ClockRight;
.super Lcom/android/systemui/statusbar/policy/Clock;
.source "ClockRight.java"


# instance fields
.field private mClockVisibleByPolicy:Z

.field private mClockVisibleByUser:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/policy/ClockRight;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/policy/ClockRight;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/statusbar/policy/Clock;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/ClockRight;->mClockVisibleByPolicy:Z

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/ClockRight;->mClockVisibleByUser:Z

    return-void
.end method


# virtual methods
.method public disable(IIZ)V
    .locals 0

    const/high16 p2, 0x800000

    and-int/2addr p1, p2

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iget-boolean p2, p0, Lcom/android/systemui/statusbar/policy/ClockRight;->mClockVisibleByPolicy:Z

    if-eq p1, p2, :cond_1

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/ClockRight;->setClockVisibilityByPolicy(Z)V

    :cond_1
    return-void
.end method

.method private shouldBeVisible()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/ClockRight;->mClockVisibleByPolicy:Z

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/policy/ClockRight;->mClockVisibleByUser:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public setClockVisibilityByPolicy(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/ClockRight;->mClockVisibleByPolicy:Z

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/ClockRight;->updateClockVisibility()V

    return-void
.end method

.method public updateClockVisibility()V
    .locals 2
    
    sget v0, Lcom/android/mwilky/Renovate;->mClockPosition:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/ClockRight;->shouldBeVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/16 v0, 0x8

    :goto_0
    invoke-super {p0, v0}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method
