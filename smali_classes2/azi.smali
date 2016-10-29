.class public abstract Lazi;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lazt;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Ljava/lang/Object;",
        "C::",
        "Ljava/io/Closeable;",
        "N:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lazt",
        "<TA;TC;>;"
    }
.end annotation


# instance fields
.field private final a:Lrx/t;

.field private final b:Lrx/t;

.field private final c:Lbaj;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbaj",
            "<TC;>;"
        }
    .end annotation
.end field

.field private final d:Ldkv;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldkv",
            "<TN;>;"
        }
    .end annotation
.end field

.field private final e:Ldlx;


# direct methods
.method protected constructor <init>(Lrx/o;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/o",
            "<TN;>;)V"
        }
    .end annotation

    .prologue
    .line 55
    invoke-static {}, Ldiz;->a()Lrx/t;

    move-result-object v0

    invoke-static {}, Ldls;->d()Lrx/t;

    move-result-object v1

    invoke-direct {p0, v0, v1, p1}, Lazi;-><init>(Lrx/t;Lrx/t;Lrx/o;)V

    .line 56
    return-void
.end method

.method protected constructor <init>(Lrx/t;Lrx/t;Lrx/o;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/t;",
            "Lrx/t;",
            "Lrx/o",
            "<TN;>;)V"
        }
    .end annotation

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object p1, p0, Lazi;->a:Lrx/t;

    .line 61
    iput-object p2, p0, Lazi;->b:Lrx/t;

    .line 62
    new-instance v0, Lbaj;

    invoke-direct {v0}, Lbaj;-><init>()V

    iput-object v0, p0, Lazi;->c:Lbaj;

    .line 63
    invoke-virtual {p3}, Lrx/o;->k()Ldkv;

    move-result-object v0

    iput-object v0, p0, Lazi;->d:Ldkv;

    .line 64
    new-instance v0, Ldlx;

    invoke-direct {v0}, Ldlx;-><init>()V

    iput-object v0, p0, Lazi;->e:Ldlx;

    .line 65
    iget-object v0, p0, Lazi;->e:Ldlx;

    iget-object v1, p0, Lazi;->d:Ldkv;

    invoke-virtual {v1}, Ldkv;->a()Lrx/ap;

    move-result-object v1

    invoke-virtual {v0, v1}, Ldlx;->a(Lrx/ap;)V

    .line 66
    return-void
.end method

.method static synthetic a(Lazi;)Lbaj;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lazi;->c:Lbaj;

    return-object v0
.end method


# virtual methods
.method public a_(Ljava/lang/Object;)Lrx/o;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)",
            "Lrx/o",
            "<TC;>;"
        }
    .end annotation

    .prologue
    .line 71
    iget-object v0, p0, Lazi;->d:Ldkv;

    const/4 v1, 0x0

    .line 72
    invoke-virtual {v0, v1}, Ldkv;->d(Ljava/lang/Object;)Lrx/o;

    move-result-object v0

    iget-object v1, p0, Lazi;->b:Lrx/t;

    .line 73
    invoke-virtual {v0, v1}, Lrx/o;->a(Lrx/t;)Lrx/o;

    move-result-object v0

    new-instance v1, Lazj;

    invoke-direct {v1, p0, p1}, Lazj;-><init>(Lazi;Ljava/lang/Object;)V

    .line 74
    invoke-virtual {v0, v1}, Lrx/o;->h(Ldjj;)Lrx/o;

    move-result-object v0

    iget-object v1, p0, Lazi;->a:Lrx/t;

    .line 85
    invoke-virtual {v0, v1}, Lrx/o;->a(Lrx/t;)Lrx/o;

    move-result-object v0

    new-instance v1, Lbag;

    iget-object v2, p0, Lazi;->c:Lbaj;

    invoke-direct {v1, v2}, Lbag;-><init>(Lbaj;)V

    .line 86
    invoke-virtual {v0, v1}, Lrx/o;->a(Lrx/q;)Lrx/o;

    move-result-object v0

    const/4 v1, 0x1

    .line 87
    invoke-virtual {v0, v1}, Lrx/o;->a(I)Ldkv;

    move-result-object v0

    .line 88
    iget-object v1, p0, Lazi;->e:Ldlx;

    invoke-virtual {v0}, Ldkv;->a()Lrx/ap;

    move-result-object v2

    invoke-virtual {v1, v2}, Ldlx;->a(Lrx/ap;)V

    .line 89
    return-object v0
.end method

.method protected abstract b(Ljava/lang/Object;)Ljava/io/Closeable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)TC;"
        }
    .end annotation
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 94
    iget-object v0, p0, Lazi;->e:Ldlx;

    invoke-virtual {v0}, Ldlx;->R_()V

    .line 95
    iget-object v0, p0, Lazi;->c:Lbaj;

    invoke-virtual {v0}, Lbaj;->b()V

    .line 96
    return-void
.end method
