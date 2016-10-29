.class public Lcom/twitter/library/card/bn;
.super Lcom/twitter/library/card/al;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/twitter/library/card/al",
        "<",
        "Lcom/twitter/library/card/bo;",
        "Lcom/twitter/model/core/TwitterUser;",
        ">;"
    }
.end annotation


# static fields
.field private static c:Lcom/twitter/library/card/bn;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/twitter/library/card/al;-><init>()V

    .line 14
    return-void
.end method

.method public static a()Lcom/twitter/library/card/bn;
    .locals 1

    .prologue
    .line 17
    sget-object v0, Lcom/twitter/library/card/bn;->c:Lcom/twitter/library/card/bn;

    if-nez v0, :cond_0

    .line 18
    new-instance v0, Lcom/twitter/library/card/bn;

    invoke-direct {v0}, Lcom/twitter/library/card/bn;-><init>()V

    sput-object v0, Lcom/twitter/library/card/bn;->c:Lcom/twitter/library/card/bn;

    .line 20
    :cond_0
    sget-object v0, Lcom/twitter/library/card/bn;->c:Lcom/twitter/library/card/bn;

    return-object v0
.end method


# virtual methods
.method protected a(Lcom/twitter/library/card/bo;JLcom/twitter/model/core/TwitterUser;)V
    .locals 0

    .prologue
    .line 30
    invoke-interface {p1, p2, p3, p4}, Lcom/twitter/library/card/bo;->a(JLcom/twitter/model/core/TwitterUser;)V

    .line 31
    return-void
.end method

.method protected bridge synthetic a(Ljava/lang/Object;JLjava/lang/Object;)V
    .locals 0

    .prologue
    .line 10
    check-cast p1, Lcom/twitter/library/card/bo;

    check-cast p4, Lcom/twitter/model/core/TwitterUser;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/twitter/library/card/bn;->a(Lcom/twitter/library/card/bo;JLcom/twitter/model/core/TwitterUser;)V

    return-void
.end method
