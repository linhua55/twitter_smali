.class Lcxw;
.super Landroid/graphics/drawable/Drawable$ConstantState;
.source "Twttr"


# instance fields
.field a:I

.field b:F


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 263
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    .line 264
    return-void
.end method

.method constructor <init>(Lcxw;)V
    .locals 1

    .prologue
    .line 266
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    .line 267
    iget v0, p1, Lcxw;->a:I

    iput v0, p0, Lcxw;->a:I

    .line 268
    iget v0, p1, Lcxw;->b:F

    iput v0, p0, Lcxw;->b:F

    .line 269
    return-void
.end method


# virtual methods
.method public getChangingConfigurations()I
    .locals 1

    .prologue
    .line 279
    const/4 v0, 0x0

    return v0
.end method

.method public newDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 274
    new-instance v0, Lcxs;

    invoke-direct {v0, p0}, Lcxs;-><init>(Lcxw;)V

    return-object v0
.end method
