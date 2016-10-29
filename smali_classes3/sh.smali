.class public Lsh;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lsb;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lsb",
        "<",
        "Ljava/lang/String;",
        "Lcom/twitter/library/api/TwitterLocation;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lsd;


# direct methods
.method public constructor <init>(Lsd;)V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lsh;->a:Lsd;

    .line 24
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lsh;->a:Lsd;

    invoke-virtual {v0}, Lsd;->b()V

    .line 64
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;Lsc;)V
    .locals 0

    .prologue
    .line 16
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lsh;->a(Ljava/lang/String;Lsc;)V

    return-void
.end method

.method public a(Ljava/lang/String;Lsc;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lsc",
            "<",
            "Ljava/lang/String;",
            "Lcom/twitter/library/api/TwitterLocation;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 29
    iget-object v0, p0, Lsh;->a:Lsd;

    invoke-virtual {v0}, Lsd;->a()Z

    move-result v0

    .line 30
    if-eqz v0, :cond_0

    .line 31
    invoke-virtual {p0, p1, p2}, Lsh;->b(Ljava/lang/String;Lsc;)V

    .line 44
    :goto_0
    return-void

    .line 33
    :cond_0
    new-instance v0, Lcmo;

    iget-object v1, p0, Lsh;->a:Lsd;

    .line 34
    invoke-virtual {v1, p1}, Lsd;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Lcmo;-><init>(Ljava/lang/Iterable;)V

    .line 37
    invoke-virtual {v0}, Lcmf;->bb_()I

    move-result v1

    if-nez v1, :cond_1

    invoke-static {p1}, Lcom/twitter/util/aj;->a(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 38
    invoke-static {v0}, Ldbt;->a(Ljava/io/Closeable;)V

    .line 39
    invoke-virtual {p0, p1, p2}, Lsh;->b(Ljava/lang/String;Lsc;)V

    goto :goto_0

    .line 41
    :cond_1
    invoke-interface {p2, p1, v0}, Lsc;->a(Ljava/lang/Object;Lcmf;)V

    goto :goto_0
.end method

.method b(Ljava/lang/String;Lsc;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lsc",
            "<",
            "Ljava/lang/String;",
            "Lcom/twitter/library/api/TwitterLocation;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 48
    iget-object v0, p0, Lsh;->a:Lsd;

    new-instance v1, Lsi;

    invoke-direct {v1, p0, p1, p2}, Lsi;-><init>(Lsh;Ljava/lang/String;Lsc;)V

    invoke-virtual {v0, v1}, Lsd;->a(Lsg;)V

    .line 59
    return-void
.end method
