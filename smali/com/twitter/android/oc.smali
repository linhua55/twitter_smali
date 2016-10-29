.class public Lcom/twitter/android/oc;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lcom/twitter/android/nz;


# instance fields
.field private final a:Lcom/twitter/android/ny;

.field private final b:Lcom/twitter/android/oa;

.field private final c:Lcom/twitter/android/ob;


# direct methods
.method public constructor <init>(Lcom/twitter/android/ob;Lcom/twitter/android/oa;Lcom/twitter/android/ny;)V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p2, p0, Lcom/twitter/android/oc;->b:Lcom/twitter/android/oa;

    .line 17
    iput-object p3, p0, Lcom/twitter/android/oc;->a:Lcom/twitter/android/ny;

    .line 18
    iput-object p1, p0, Lcom/twitter/android/oc;->c:Lcom/twitter/android/ob;

    .line 19
    return-void
.end method

.method private a(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/twitter/android/oc;->c:Lcom/twitter/android/ob;

    invoke-interface {v0, p1}, Lcom/twitter/android/ob;->b(Landroid/graphics/drawable/Drawable;)V

    .line 49
    return-void
.end method

.method private c()Z
    .locals 2

    .prologue
    .line 44
    iget-object v0, p0, Lcom/twitter/android/oc;->c:Lcom/twitter/android/ob;

    invoke-interface {v0}, Lcom/twitter/android/ob;->t()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 35
    iget-object v0, p0, Lcom/twitter/android/oc;->a:Lcom/twitter/android/ny;

    iget-object v1, p0, Lcom/twitter/android/oc;->c:Lcom/twitter/android/ob;

    invoke-interface {v1}, Lcom/twitter/android/ob;->t()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/twitter/android/ny;->a(F)V

    .line 36
    invoke-direct {p0}, Lcom/twitter/android/oc;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 37
    iget-object v0, p0, Lcom/twitter/android/oc;->a:Lcom/twitter/android/ny;

    iget-object v1, p0, Lcom/twitter/android/oc;->b:Lcom/twitter/android/oa;

    invoke-interface {v1}, Lcom/twitter/android/oa;->u()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/twitter/android/ny;->a(I)Landroid/graphics/drawable/LayerDrawable;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/twitter/android/oc;->a(Landroid/graphics/drawable/Drawable;)V

    .line 41
    :goto_0
    return-void

    .line 39
    :cond_0
    iget-object v0, p0, Lcom/twitter/android/oc;->a:Lcom/twitter/android/ny;

    invoke-virtual {v0}, Lcom/twitter/android/ny;->a()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/twitter/android/oc;->a(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public a(Landroid/graphics/Bitmap;Z)V
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/twitter/android/oc;->a:Lcom/twitter/android/ny;

    invoke-virtual {v0, p1, p2}, Lcom/twitter/android/ny;->a(Landroid/graphics/Bitmap;Z)V

    .line 30
    invoke-virtual {p0}, Lcom/twitter/android/oc;->a()V

    .line 31
    return-void
.end method

.method public b()V
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/twitter/android/oc;->a:Lcom/twitter/android/ny;

    invoke-virtual {v0}, Lcom/twitter/android/ny;->b()V

    .line 24
    invoke-virtual {p0}, Lcom/twitter/android/oc;->a()V

    .line 25
    return-void
.end method
