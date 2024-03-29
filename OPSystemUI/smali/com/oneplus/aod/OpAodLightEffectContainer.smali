.class public Lcom/oneplus/aod/OpAodLightEffectContainer;
.super Landroid/widget/FrameLayout;
.source "OpAodLightEffectContainer.java"



# static fields
.field public static mTotalRuntime:I

.field public static mLightIndex:I


# instance fields
.field private mAnimateIndex:I

.field private mAnimationBgLeft:Landroid/graphics/Bitmap;

.field private mAnimationBgRight:Landroid/graphics/Bitmap;

.field private mBgHandler:Landroid/os/Handler;

.field private mBitmapLeft:[Landroid/graphics/Bitmap;

.field private mBitmapRight:[Landroid/graphics/Bitmap;

.field private mDecodeIndex:I

.field private final mFrameRunnable:Ljava/lang/Runnable;

.field private mHandler:Landroid/os/Handler;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private mLeftView:Landroid/widget/ImageView;

.field private mLightAnimator:Landroid/animation/ValueAnimator;

.field private mRightView:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mDecodeIndex:I

    iput p1, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mAnimateIndex:I

    sput p1, Lcom/oneplus/aod/OpAodLightEffectContainer;->mLightIndex:I

    new-instance p1, Lcom/oneplus/aod/OpAodLightEffectContainer$1;

    invoke-direct {p1, p0}, Lcom/oneplus/aod/OpAodLightEffectContainer$1;-><init>(Lcom/oneplus/aod/OpAodLightEffectContainer;)V

    iput-object p1, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mFrameRunnable:Ljava/lang/Runnable;

    invoke-direct {p0}, Lcom/oneplus/aod/OpAodLightEffectContainer;->initViews()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mDecodeIndex:I

    iput p1, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mAnimateIndex:I

    sput p1, Lcom/oneplus/aod/OpAodLightEffectContainer;->mLightIndex:I

    new-instance p1, Lcom/oneplus/aod/OpAodLightEffectContainer$1;

    invoke-direct {p1, p0}, Lcom/oneplus/aod/OpAodLightEffectContainer$1;-><init>(Lcom/oneplus/aod/OpAodLightEffectContainer;)V

    iput-object p1, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mFrameRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mDecodeIndex:I

    iput p1, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mAnimateIndex:I

    sput p1, Lcom/oneplus/aod/OpAodLightEffectContainer;->mLightIndex:I

    new-instance p1, Lcom/oneplus/aod/OpAodLightEffectContainer$1;

    invoke-direct {p1, p0}, Lcom/oneplus/aod/OpAodLightEffectContainer$1;-><init>(Lcom/oneplus/aod/OpAodLightEffectContainer;)V

    iput-object p1, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mFrameRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mDecodeIndex:I

    iput p1, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mAnimateIndex:I

    sput p1, Lcom/oneplus/aod/OpAodLightEffectContainer;->mLightIndex:I

    new-instance p1, Lcom/oneplus/aod/OpAodLightEffectContainer$1;

    invoke-direct {p1, p0}, Lcom/oneplus/aod/OpAodLightEffectContainer$1;-><init>(Lcom/oneplus/aod/OpAodLightEffectContainer;)V

    iput-object p1, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mFrameRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/aod/OpAodLightEffectContainer;)I
    .locals 0

    iget p0, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mAnimateIndex:I

    return p0
.end method

.method static synthetic access$008(Lcom/oneplus/aod/OpAodLightEffectContainer;)I
    .locals 2

    iget v0, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mAnimateIndex:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mAnimateIndex:I

    return v0
.end method

.method static synthetic access$100(Lcom/oneplus/aod/OpAodLightEffectContainer;)[Landroid/graphics/Bitmap;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mBitmapLeft:[Landroid/graphics/Bitmap;

    return-object p0
.end method

.method static synthetic access$200(Lcom/oneplus/aod/OpAodLightEffectContainer;)Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mLeftView:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$300(Lcom/oneplus/aod/OpAodLightEffectContainer;)[Landroid/graphics/Bitmap;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mBitmapRight:[Landroid/graphics/Bitmap;

    return-object p0
.end method

.method static synthetic access$400(Lcom/oneplus/aod/OpAodLightEffectContainer;)Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mRightView:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$500(Lcom/oneplus/aod/OpAodLightEffectContainer;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mFrameRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$600(Lcom/oneplus/aod/OpAodLightEffectContainer;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$700(Lcom/oneplus/aod/OpAodLightEffectContainer;)I
    .locals 0

    iget p0, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mDecodeIndex:I

    return p0
.end method

.method static synthetic access$800(Lcom/oneplus/aod/OpAodLightEffectContainer;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mBgHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$900(Lcom/oneplus/aod/OpAodLightEffectContainer;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/aod/OpAodLightEffectContainer;->decodeBitmap()V

    return-void
.end method

.method private animateNotification(ZZ)V
    .registers 7
    .param p1, "mAlwaysOnPulse"    # Z
    .param p2, "mRun"    # Z

    .line 272
    iget-object v0, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mLightAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_f

    .line 273
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 274
    iget-object v0, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mLightAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->end()V

    .line 276
    :cond_f
    const/4 v0, 0x2

    new-array v1, v0, [F

    fill-array-data v1, :array_5e

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mLightAnimator:Landroid/animation/ValueAnimator;

    .line 277
    iget-object v1, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mLightAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 278
    if-eqz p1, :cond_2b

    .line 279
    iget-object v1, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mLightAnimator:Landroid/animation/ValueAnimator;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    goto :goto_32

    .line 283
    :cond_2b
    iget-object v1, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mLightAnimator:Landroid/animation/ValueAnimator;

    sget v2, Lcom/android/mwilky/Renovate;->mNotifAnimRepeatCount:I

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 288
    :goto_32
    sget-boolean v1, Lcom/android/mwilky/Renovate;->mHorizonRepeatMode:Z

    if-nez v1, :cond_3d

    .line 289
    iget-object v0, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mLightAnimator:Landroid/animation/ValueAnimator;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    goto :goto_42

    .line 291
    :cond_3d
    iget-object v1, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mLightAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1, v0}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    .line 293
    :goto_42
    iget-object v0, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mLightAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/oneplus/aod/OpAodLightEffectContainer$3;

    invoke-direct {v1, p0}, Lcom/oneplus/aod/OpAodLightEffectContainer$3;-><init>(Lcom/oneplus/aod/OpAodLightEffectContainer;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 310
    iget-object v0, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mLightAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->getTotalDuration()J

    move-result-wide v0

    long-to-int v0, v0

    sput v0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mTotalRuntime:I

    .line 311
    if-eqz p2, :cond_5c

    .line 312
    iget-object v0, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mLightAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 314
    :cond_5c
    return-void

    nop

    :array_5e
    .array-data 4
        0x0
        0x40000000    # 2.0f
    .end array-data
.end method

.method private decodeBitmap()V
    .locals 8

    iget-object v0, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mBitmapLeft:[Landroid/graphics/Bitmap;

    const-string v1, "OpAodLightEffectContainer"

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mBitmapRight:[Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mDecodeIndex:I

    iget-object v2, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "aod_light_my_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const-string v6, "%02d"

    invoke-static {v6, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v5, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "drawable"

    invoke-virtual {v2, v3, v6, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v0, "decodeBitmap but recycled"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mDecodeIndex:I

    add-int/2addr v0, v4

    iput v0, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mDecodeIndex:I

    return-void

    :cond_1
    if-nez v2, :cond_2

    const-string v3, "decode bitmap null"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object v1, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mBitmapRight:[Landroid/graphics/Bitmap;

    aput-object v2, v1, v0

    iget-object v1, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mBitmapLeft:[Landroid/graphics/Bitmap;

    invoke-direct {p0, v2}, Lcom/oneplus/aod/OpAodLightEffectContainer;->flip(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v2

    aput-object v2, v1, v0

    iget v0, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mDecodeIndex:I

    add-int/2addr v0, v4

    iput v0, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mDecodeIndex:I

    return-void

    :cond_3
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to decodeBitmap. mBitmapLeft="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mBitmapLeft:[Landroid/graphics/Bitmap;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " mBitmapRight="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mBitmapRight:[Landroid/graphics/Bitmap;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private flip(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 7

    const/4 p0, 0x0

    if-eqz p1, :cond_1

    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    const/high16 v0, -0x40800000    # -1.0f

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v5, v0, v1}, Landroid/graphics/Matrix;->preScale(FF)Z

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "OpAodLightEffectContainer"

    const-string v0, "src is recycled"

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0

    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x0

    move-object v0, p1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object p0

    :cond_1
    return-object p0
.end method

.method private initViews()V
    .locals 1

    sget v0, Lcom/android/systemui/R$id;->notification_animation_left:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mLeftView:Landroid/widget/ImageView;

    sget v0, Lcom/android/systemui/R$id;->notification_animation_right:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mRightView:Landroid/widget/ImageView;

    invoke-direct {p0}, Lcom/oneplus/aod/OpAodLightEffectContainer;->relayoutViews()V

    return-void
.end method

.method private loadResources()V
    .registers 3

    .line 130
    iget-object v0, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080226

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mAnimationBgRight:Landroid/graphics/Bitmap;

    .line 131
    iget-object v0, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080225

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mAnimationBgLeft:Landroid/graphics/Bitmap;

    .line 132
    iget-object v0, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mLeftView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mAnimationBgLeft:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 133
    iget-object v0, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mRightView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mAnimationBgRight:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 134
    return-void
.end method

.method private prepareResources()V
    .locals 2

    const-string v0, "OpAodLightEffectContainer"

    const-string v1, "prepareResources"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mBitmapLeft:[Landroid/graphics/Bitmap;

    const/16 v1, 0x64

    if-nez v0, :cond_0

    new-array v0, v1, [Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mBitmapLeft:[Landroid/graphics/Bitmap;

    :cond_0
    iget-object v0, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mBitmapRight:[Landroid/graphics/Bitmap;

    if-nez v0, :cond_1

    new-array v0, v1, [Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mBitmapRight:[Landroid/graphics/Bitmap;

    :cond_1
    iget-object v0, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_2

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mHandler:Landroid/os/Handler;

    :cond_2
    invoke-direct {p0}, Lcom/oneplus/aod/OpAodLightEffectContainer;->startHandlerThread()V

    return-void
.end method

.method private relayoutViews()V
    .locals 3

    sget v0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mLightIndex:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    if-eqz v0, :cond_1

    sget v2, Lcom/android/systemui/R$dimen;->op_aod_light_effect_my_width:I

    goto :goto_1

    :cond_1
    sget v2, Lcom/android/systemui/R$dimen;->op_aod_light_effect_width:I

    :goto_1
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iget-object v2, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mLeftView:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iput v1, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v2, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mRightView:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iput v1, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-eqz v0, :cond_2

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setScaleY(F)V

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setAlpha(F)V

    iget-object v0, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mLeftView:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iget-object p0, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mRightView:Landroid/widget/ImageView;

    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    :cond_2
    return-void
.end method

.method private startHandlerThread()V
    .locals 2

    iget-object v0, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mHandlerThread:Landroid/os/HandlerThread;

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "HandlerThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mHandlerThread:Landroid/os/HandlerThread;

    iget-object v0, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Lcom/oneplus/aod/OpAodLightEffectContainer$2;

    iget-object v1, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/oneplus/aod/OpAodLightEffectContainer$2;-><init>(Lcom/oneplus/aod/OpAodLightEffectContainer;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mBgHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mBgHandler:Landroid/os/Handler;

    const/16 v0, 0x100

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 0

    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    invoke-direct {p0}, Lcom/oneplus/aod/OpAodLightEffectContainer;->initViews()V

    return-void
.end method

.method public resetNotificationAnimView()V
    .registers 8

    .line 77
    sget v0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mLightIndex:I

    const/16 v1, 0xa

    if-eq v0, v1, :cond_d

    .line 78
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/oneplus/aod/OpAodLightEffectContainer;->setScaleY(F)V

    .line 79
    invoke-virtual {p0, v0}, Lcom/oneplus/aod/OpAodLightEffectContainer;->setAlpha(F)V
    
    .line 81
    :cond_d
    iget-object v0, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mRightView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 82
    iget-object v0, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mLeftView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 83
    iget-object v0, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mAnimationBgRight:Landroid/graphics/Bitmap;

    .line 84
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    iget-object v2, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mAnimationBgRight:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_23

    .line 85
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 86
    iput-object v1, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mAnimationBgRight:Landroid/graphics/Bitmap;

    .line 88
    :cond_23
    iget-object v2, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mAnimationBgLeft:Landroid/graphics/Bitmap;

    .line 89
    .local v2, "bitmap2":Landroid/graphics/Bitmap;
    if-eqz v2, :cond_2c

    .line 90
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 91
    iput-object v1, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mAnimationBgLeft:Landroid/graphics/Bitmap;

    .line 93
    :cond_2c
    iget-object v3, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mBgHandler:Landroid/os/Handler;

    .line 94
    .local v3, "handler":Landroid/os/Handler;
    if-eqz v3, :cond_37

    .line 95
    const/16 v4, 0x100

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 96
    iput-object v1, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mBgHandler:Landroid/os/Handler;

    .line 98
    :cond_37
    iget-object v4, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mHandlerThread:Landroid/os/HandlerThread;

    .line 99
    .local v4, "handlerThread":Landroid/os/HandlerThread;
    if-eqz v4, :cond_44

    .line 100
    invoke-virtual {v4}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/Looper;->quit()V

    .line 101
    iput-object v1, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mHandlerThread:Landroid/os/HandlerThread;

    .line 103
    :cond_44
    iget-object v5, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mHandler:Landroid/os/Handler;

    .line 104
    .local v5, "handler2":Landroid/os/Handler;
    if-eqz v5, :cond_4f

    .line 105
    iget-object v6, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mFrameRunnable:Ljava/lang/Runnable;

    invoke-virtual {v5, v6}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 106
    iput-object v1, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mHandler:Landroid/os/Handler;

    .line 108
    :cond_4f
    const/4 v1, 0x0

    iput v1, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mDecodeIndex:I

    .line 109
    iput v1, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mAnimateIndex:I

    .line 110
    iget-object v1, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mLeftView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->clearColorFilter()V

    .line 111
    iget-object v1, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mRightView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->clearColorFilter()V

    .line 112
    return-void
.end method

.method public setLightIndex(I)V
    .locals 3

    sget v0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mLightIndex:I

    if-eq v0, p1, :cond_3

    invoke-static {}, Lcom/oneplus/util/OpUtils;->isMCLVersion()Z

    move-result v0

    const/16 v1, 0xa

    if-nez v0, :cond_0

    if-ne p1, v1, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Set horizon light failed. Invalid index: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "OpAodLightEffectContainer"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v0, 0x0

    sget v2, Lcom/oneplus/aod/OpAodLightEffectContainer;->mLightIndex:I

    if-eq v2, v1, :cond_1

    if-ne p1, v1, :cond_2

    :cond_1
    const/4 v0, 0x1

    :cond_2
    sput p1, Lcom/oneplus/aod/OpAodLightEffectContainer;->mLightIndex:I

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/oneplus/aod/OpAodLightEffectContainer;->relayoutViews()V

    :cond_3
    return-void
.end method

.method public showLight(ZZ)V
    .registers 8
    .param p1, "mAlwaysOnPulse"    # Z
    .param p2, "mRun"    # Z

    .line 220
    sget v0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mLightIndex:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_24

    .line 221
    invoke-direct {p0}, Lcom/oneplus/aod/OpAodLightEffectContainer;->prepareResources()V

    .line 222
    iget v0, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mAnimateIndex:I

    .line 223
    .local v0, "i":I
    if-lez v0, :cond_13

    const/16 v1, 0x64

    if-lt v0, v1, :cond_12

    goto :goto_13

    .line 228
    :cond_12
    return-void

    .line 224
    :cond_13
    :goto_13
    iget-object v1, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mFrameRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 225
    iget-object v1, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mFrameRunnable:Ljava/lang/Runnable;

    const-wide/16 v3, 0x15e

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 226
    return-void

    .line 230
    .end local v0    # "i":I
    :cond_24
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Lcom/oneplus/aod/OpAodLightEffectContainer;->setAlpha(F)V

    .line 231
    invoke-direct {p0}, Lcom/oneplus/aod/OpAodLightEffectContainer;->loadResources()V

    .line 232
    invoke-direct {p0, p1, p2}, Lcom/oneplus/aod/OpAodLightEffectContainer;->animateNotification(ZZ)V

    .line 233
    return-void
.end method

.method public setCustomEdgeColors(I)V
    .registers 5
    .param p1, "Status"    # I

    .line 393
    sget-boolean v0, Lcom/android/mwilky/Renovate;->mUnlockEdgeColors:Z

    if-eqz v0, :cond_72

    .line 394
    const/4 v0, 0x2

    if-ne p1, v0, :cond_48

    .line 396
    sget-boolean v0, Lcom/android/mwilky/Renovate;->mUseAppColorForEdgeNotifications:Z

    if-eqz v0, :cond_1e

    .line 397
    iget-object v0, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mLeftView:Landroid/widget/ImageView;

    sget v1, Lcom/oneplus/aod/OpSingleNotificationView;->mAppIconColor:I

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 398
    iget-object v0, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mRightView:Landroid/widget/ImageView;

    sget v1, Lcom/oneplus/aod/OpSingleNotificationView;->mAppIconColor:I

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_7c

    .line 401
    :cond_1e
    sget-boolean v0, Lcom/android/mwilky/Renovate;->mUseAccentColorForEdgeNotifications:Z

    if-eqz v0, :cond_35

    .line 402
    iget-object v0, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mLeftView:Landroid/widget/ImageView;

    sget v1, Lcom/android/mwilky/Renovate;->mAccentColor:I

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 403
    iget-object v0, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mRightView:Landroid/widget/ImageView;

    sget v1, Lcom/android/mwilky/Renovate;->mAccentColor:I

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_7c

    .line 406
    :cond_35
    iget-object v0, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mLeftView:Landroid/widget/ImageView;

    sget v1, Lcom/android/mwilky/Renovate;->mLeftEdgeNotificationColor:I

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 407
    iget-object v0, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mRightView:Landroid/widget/ImageView;

    sget v1, Lcom/android/mwilky/Renovate;->mRightEdgeNotificationColor:I

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_7c

    .line 411
    :cond_48
    sget-boolean v0, Lcom/android/mwilky/Renovate;->mUseAccentColorForEdgeNotifications:Z

    if-eqz v0, :cond_5f

    .line 412
    iget-object v0, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mLeftView:Landroid/widget/ImageView;

    sget v1, Lcom/android/mwilky/Renovate;->mAccentColor:I

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 413
    iget-object v0, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mRightView:Landroid/widget/ImageView;

    sget v1, Lcom/android/mwilky/Renovate;->mAccentColor:I

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_7c

    .line 416
    :cond_5f
    iget-object v0, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mLeftView:Landroid/widget/ImageView;

    sget v1, Lcom/android/mwilky/Renovate;->mLeftEdgeNotificationColor:I

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 417
    iget-object v0, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mRightView:Landroid/widget/ImageView;

    sget v1, Lcom/android/mwilky/Renovate;->mRightEdgeNotificationColor:I

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_7c

    .line 421
    :cond_72
    iget-object v0, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mLeftView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearColorFilter()V

    .line 422
    iget-object v0, p0, Lcom/oneplus/aod/OpAodLightEffectContainer;->mRightView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearColorFilter()V

    .line 425
    :goto_7c
    return-void
.end method

