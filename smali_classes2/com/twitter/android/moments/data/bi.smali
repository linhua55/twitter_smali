.class public Lcom/twitter/android/moments/data/bi;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lazt;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lazt",
        "<",
        "Lavh;",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final a:Lazt;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lazt",
            "<",
            "Lavh;",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lcmv;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcmv",
            "<+TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lazt;Lcmv;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lazt",
            "<",
            "Lavh;",
            "Landroid/database/Cursor;",
            ">;",
            "Lcmv",
            "<+TT;>;)V"
        }
    .end annotation

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/twitter/android/moments/data/bi;->a:Lazt;

    .line 24
    iput-object p2, p0, Lcom/twitter/android/moments/data/bi;->b:Lcmv;

    .line 25
    return-void
.end method

.method static synthetic a(Lcom/twitter/android/moments/data/bi;)Lcmv;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/twitter/android/moments/data/bi;->b:Lcmv;

    return-object v0
.end method


# virtual methods
.method public a(Lavh;)Lrx/o;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lavh;",
            ")",
            "Lrx/o",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 30
    iget-object v0, p0, Lcom/twitter/android/moments/data/bi;->a:Lazt;

    invoke-interface {v0, p1}, Lazt;->a_(Ljava/lang/Object;)Lrx/o;

    move-result-object v0

    new-instance v1, Lcom/twitter/android/moments/data/bj;

    invoke-direct {v1, p0}, Lcom/twitter/android/moments/data/bj;-><init>(Lcom/twitter/android/moments/data/bi;)V

    invoke-virtual {v0, v1}, Lrx/o;->h(Ldjj;)Lrx/o;

    move-result-object v0

    return-object v0
.end method

.method public synthetic a_(Ljava/lang/Object;)Lrx/o;
    .locals 1

    .prologue
    .line 16
    check-cast p1, Lavh;

    invoke-virtual {p0, p1}, Lcom/twitter/android/moments/data/bi;->a(Lavh;)Lrx/o;

    move-result-object v0

    return-object v0
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 40
    iget-object v0, p0, Lcom/twitter/android/moments/data/bi;->a:Lazt;

    invoke-interface {v0}, Lazt;->close()V

    .line 41
    return-void
.end method
