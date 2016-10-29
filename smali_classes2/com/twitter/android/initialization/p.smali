.class Lcom/twitter/android/initialization/p;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lcom/twitter/util/concurrent/e;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/twitter/util/concurrent/e",
        "<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field private a:I

.field private b:J


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 259
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/twitter/android/initialization/m;)V
    .locals 0

    .prologue
    .line 259
    invoke-direct {p0}, Lcom/twitter/android/initialization/p;-><init>()V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 270
    iget v0, p0, Lcom/twitter/android/initialization/p;->a:I

    return v0
.end method

.method public a(Landroid/graphics/Bitmap;)V
    .locals 4

    .prologue
    .line 265
    iget v0, p0, Lcom/twitter/android/initialization/p;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/twitter/android/initialization/p;->a:I

    .line 266
    iget-wide v0, p0, Lcom/twitter/android/initialization/p;->b:J

    invoke-static {p1}, Lcom/twitter/media/util/a;->b(Landroid/graphics/Bitmap;)I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/twitter/android/initialization/p;->b:J

    .line 267
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 259
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/twitter/android/initialization/p;->a(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public b()J
    .locals 2

    .prologue
    .line 274
    iget-wide v0, p0, Lcom/twitter/android/initialization/p;->b:J

    return-wide v0
.end method

.method public c()V
    .locals 2

    .prologue
    .line 278
    const/4 v0, 0x0

    iput v0, p0, Lcom/twitter/android/initialization/p;->a:I

    .line 279
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/twitter/android/initialization/p;->b:J

    .line 280
    return-void
.end method
