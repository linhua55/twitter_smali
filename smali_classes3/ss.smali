.class public abstract Lss;
.super Lst;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lst",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Lst;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic b(Ljava/lang/CharSequence;I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 8
    invoke-virtual {p0, p1, p2}, Lss;->c(Ljava/lang/CharSequence;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public c(Ljava/lang/CharSequence;I)Ljava/lang/String;
    .locals 2

    .prologue
    .line 12
    invoke-virtual {p0, p1, p2}, Lss;->a_(Ljava/lang/CharSequence;I)Lsu;

    move-result-object v0

    .line 13
    if-eqz v0, :cond_0

    iget v1, v0, Lsu;->a:I

    iget v0, v0, Lsu;->b:I

    .line 14
    invoke-interface {p1, v1, v0}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 15
    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 14
    :cond_0
    const-string/jumbo v0, ""

    goto :goto_0
.end method
