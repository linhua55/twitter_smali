.class public Lcom/twitter/library/card/ae;
.super Lcom/twitter/library/card/al;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/twitter/library/card/al",
        "<",
        "Lcom/twitter/library/card/af;",
        "Lclm;",
        ">;"
    }
.end annotation


# static fields
.field private static c:Lcom/twitter/library/card/ae;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/twitter/library/card/al;-><init>()V

    .line 15
    return-void
.end method

.method public static a()Lcom/twitter/library/card/ae;
    .locals 1

    .prologue
    .line 19
    sget-object v0, Lcom/twitter/library/card/ae;->c:Lcom/twitter/library/card/ae;

    if-nez v0, :cond_0

    .line 20
    new-instance v0, Lcom/twitter/library/card/ae;

    invoke-direct {v0}, Lcom/twitter/library/card/ae;-><init>()V

    sput-object v0, Lcom/twitter/library/card/ae;->c:Lcom/twitter/library/card/ae;

    .line 22
    :cond_0
    sget-object v0, Lcom/twitter/library/card/ae;->c:Lcom/twitter/library/card/ae;

    return-object v0
.end method


# virtual methods
.method protected a(Lcom/twitter/library/card/af;JLclm;)V
    .locals 0

    .prologue
    .line 31
    invoke-interface {p1, p2, p3, p4}, Lcom/twitter/library/card/af;->a(JLclm;)V

    .line 32
    return-void
.end method

.method protected bridge synthetic a(Ljava/lang/Object;JLjava/lang/Object;)V
    .locals 0

    .prologue
    .line 11
    check-cast p1, Lcom/twitter/library/card/af;

    check-cast p4, Lclm;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/twitter/library/card/ae;->a(Lcom/twitter/library/card/af;JLclm;)V

    return-void
.end method
