.class public Lcom/android/mwilky/CustomTypefaceSpan;
.super Landroid/text/style/MetricAffectingSpan;
.source "CustomTypefaceSpan.java"


# instance fields
.field private final typeface:Landroid/graphics/Typeface;


# direct methods
.method public constructor <init>(Landroid/graphics/Typeface;)V
    .locals 0

    invoke-direct {p0}, Landroid/text/style/MetricAffectingSpan;-><init>()V

    iput-object p1, p0, Lcom/android/mwilky/CustomTypefaceSpan;->typeface:Landroid/graphics/Typeface;

    return-void
.end method

.method private static applyCustomTypeFace(Landroid/graphics/Paint;Landroid/graphics/Typeface;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    return-void
.end method


# virtual methods
.method public updateDrawState(Landroid/text/TextPaint;)V
    .locals 1

    iget-object v0, p0, Lcom/android/mwilky/CustomTypefaceSpan;->typeface:Landroid/graphics/Typeface;

    invoke-static {p1, v0}, Lcom/android/mwilky/CustomTypefaceSpan;->applyCustomTypeFace(Landroid/graphics/Paint;Landroid/graphics/Typeface;)V

    return-void
.end method

.method public updateMeasureState(Landroid/text/TextPaint;)V
    .locals 1

    iget-object v0, p0, Lcom/android/mwilky/CustomTypefaceSpan;->typeface:Landroid/graphics/Typeface;

    invoke-static {p1, v0}, Lcom/android/mwilky/CustomTypefaceSpan;->applyCustomTypeFace(Landroid/graphics/Paint;Landroid/graphics/Typeface;)V

    return-void
.end method
