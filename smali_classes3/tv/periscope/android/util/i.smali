.class Ltv/periscope/android/util/i;
.super Ltv/periscope/android/util/c;
.source "Twttr"


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Landroid/graphics/Bitmap;

.field private final c:Ltv/periscope/android/util/k;

.field private final d:F

.field private final e:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/graphics/Bitmap;FILtv/periscope/android/util/k;)V
    .locals 0

    .prologue
    .line 240
    invoke-direct {p0}, Ltv/periscope/android/util/c;-><init>()V

    .line 241
    iput-object p1, p0, Ltv/periscope/android/util/i;->a:Landroid/content/Context;

    .line 242
    iput-object p2, p0, Ltv/periscope/android/util/i;->b:Landroid/graphics/Bitmap;

    .line 243
    iput p3, p0, Ltv/periscope/android/util/i;->d:F

    .line 244
    iput p4, p0, Ltv/periscope/android/util/i;->e:I

    .line 245
    iput-object p5, p0, Ltv/periscope/android/util/i;->c:Ltv/periscope/android/util/k;

    .line 246
    return-void
.end method

.method static synthetic a(Ltv/periscope/android/util/i;)Ltv/periscope/android/util/k;
    .locals 1

    .prologue
    .line 233
    iget-object v0, p0, Ltv/periscope/android/util/i;->c:Ltv/periscope/android/util/k;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    .line 250
    iget-object v0, p0, Ltv/periscope/android/util/i;->b:Landroid/graphics/Bitmap;

    iget v1, p0, Ltv/periscope/android/util/i;->d:F

    invoke-static {v0, v1}, Ltv/periscope/android/util/h;->a(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 251
    iget-object v1, p0, Ltv/periscope/android/util/i;->a:Landroid/content/Context;

    iget v2, p0, Ltv/periscope/android/util/i;->e:I

    invoke-static {v1, v0, v2}, Ltv/periscope/android/util/h;->a(Landroid/content/Context;Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 252
    iget-object v2, p0, Ltv/periscope/android/util/i;->b:Landroid/graphics/Bitmap;

    if-eq v0, v2, :cond_0

    .line 255
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 258
    :cond_0
    iget-object v0, p0, Ltv/periscope/android/util/i;->c:Ltv/periscope/android/util/k;

    if-eqz v0, :cond_1

    .line 259
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v2, Ltv/periscope/android/util/j;

    invoke-direct {v2, p0, v1}, Ltv/periscope/android/util/j;-><init>(Ltv/periscope/android/util/i;Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 266
    :cond_1
    return-void
.end method
