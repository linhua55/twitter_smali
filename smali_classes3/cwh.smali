.class Lcwh;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lrx/p;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/p",
        "<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lrx/t;

.field final synthetic b:Lcwe;


# direct methods
.method constructor <init>(Lcwe;Lrx/t;)V
    .locals 0

    .prologue
    .line 174
    iput-object p1, p0, Lcwh;->b:Lcwe;

    iput-object p2, p0, Lcwh;->a:Lrx/t;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lrx/ao;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/ao",
            "<-",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 177
    iget-object v0, p0, Lcwh;->a:Lrx/t;

    invoke-virtual {v0}, Lrx/t;->a()Lrx/u;

    move-result-object v0

    .line 178
    invoke-virtual {p1, v0}, Lrx/ao;->a(Lrx/ap;)V

    .line 179
    new-instance v1, Lcwi;

    invoke-direct {v1, p0, v0, p1}, Lcwi;-><init>(Lcwh;Lrx/u;Lrx/ao;)V

    const-wide/16 v2, 0x0

    iget-object v4, p0, Lcwh;->b:Lcwe;

    iget v4, v4, Lcwe;->a:I

    int-to-long v4, v4

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual/range {v0 .. v6}, Lrx/u;->a(Ldje;JJLjava/util/concurrent/TimeUnit;)Lrx/ap;

    .line 202
    return-void
.end method

.method public synthetic call(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 174
    check-cast p1, Lrx/ao;

    invoke-virtual {p0, p1}, Lcwh;->a(Lrx/ao;)V

    return-void
.end method
