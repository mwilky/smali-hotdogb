.class public final Lkotlin/random/PlatformRandomKt;
.super Ljava/lang/Object;
.source "PlatformRandom.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u001e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0006\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u001a\t\u0010\u0000\u001a\u00020\u0001H\u0081\u0008\u001a\u0018\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0005H\u0000\u001a\u0010\u0010\u0007\u001a\u00020\u00052\u0006\u0010\u0008\u001a\u00020\u0005H\u0000\u001a\u000c\u0010\t\u001a\u00020\n*\u00020\u0001H\u0007\u001a\u000c\u0010\u000b\u001a\u00020\u0001*\u00020\nH\u0007\u00a8\u0006\u000c"
    }
    d2 = {
        "defaultPlatformRandom",
        "Lkotlin/random/Random;",
        "doubleFromParts",
        "",
        "hi26",
        "",
        "low27",
        "fastLog2",
        "value",
        "asJavaRandom",
        "Ljava/util/Random;",
        "asKotlinRandom",
        "kotlin-stdlib"
    }
    k = 0x2
    mv = {
        0x1,
        0x1,
        0xd
    }
.end annotation


# direct methods
.method public static final asJavaRandom(Lkotlin/random/Random;)Ljava/util/Random;
    .locals 1
    .param p0    # Lkotlin/random/Random;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lkotlin/SinceKotlin;
        version = "1.3"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "receiver$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p0, Lkotlin/random/AbstractPlatformRandom;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    move-object v0, p0

    :goto_0
    check-cast v0, Lkotlin/random/AbstractPlatformRandom;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lkotlin/random/AbstractPlatformRandom;->getImpl()Ljava/util/Random;

    move-result-object v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    new-instance v0, Lkotlin/random/KotlinRandom;

    invoke-direct {v0, p0}, Lkotlin/random/KotlinRandom;-><init>(Lkotlin/random/Random;)V

    check-cast v0, Ljava/util/Random;

    :goto_1
    return-object v0
.end method

.method public static final asKotlinRandom(Ljava/util/Random;)Lkotlin/random/Random;
    .locals 1
    .param p0    # Ljava/util/Random;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lkotlin/SinceKotlin;
        version = "1.3"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "receiver$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p0, Lkotlin/random/KotlinRandom;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    move-object v0, p0

    :goto_0
    check-cast v0, Lkotlin/random/KotlinRandom;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lkotlin/random/KotlinRandom;->getImpl()Lkotlin/random/Random;

    move-result-object v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    new-instance v0, Lkotlin/random/PlatformRandom;

    invoke-direct {v0, p0}, Lkotlin/random/PlatformRandom;-><init>(Ljava/util/Random;)V

    check-cast v0, Lkotlin/random/Random;

    :goto_1
    return-object v0
.end method

.method private static final defaultPlatformRandom()Lkotlin/random/Random;
    .locals 2
    .annotation build Lkotlin/internal/InlineOnly;
    .end annotation

    const/4 v0, 0x0

    sget-object v1, Lkotlin/internal/PlatformImplementationsKt;->IMPLEMENTATIONS:Lkotlin/internal/PlatformImplementations;

    invoke-virtual {v1}, Lkotlin/internal/PlatformImplementations;->defaultPlatformRandom()Lkotlin/random/Random;

    move-result-object v1

    return-object v1
.end method

.method public static final doubleFromParts(II)D
    .locals 4

    int-to-long v0, p0

    const/16 v2, 0x1b

    shl-long/2addr v0, v2

    int-to-long v2, p1

    add-long/2addr v0, v2

    long-to-double v0, v0

    const-wide/high16 v2, 0x20000000000000L

    long-to-double v2, v2

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public static final fastLog2(I)I
    .locals 1

    invoke-static {p0}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result v0

    rsub-int/lit8 v0, v0, 0x1f

    return v0
.end method
