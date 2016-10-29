.class public final Ldiz;
.super Ljava/lang/Object;
.source "Twttr"


# direct methods
.method public static a()Lrx/t;
    .locals 1

    .prologue
    .line 37
    invoke-static {}, Ldix;->a()Ldix;

    move-result-object v0

    invoke-virtual {v0}, Ldix;->b()Ldiy;

    move-result-object v0

    invoke-virtual {v0}, Ldiy;->b()Lrx/t;

    move-result-object v0

    .line 39
    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Ldja;->a:Lrx/t;

    goto :goto_0
.end method
