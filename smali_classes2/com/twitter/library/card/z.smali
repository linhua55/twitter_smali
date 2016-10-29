.class public Lcom/twitter/library/card/z;
.super Lcom/twitter/library/card/al;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/twitter/library/card/al",
        "<",
        "Lcom/twitter/library/card/aa;",
        "Lcom/twitter/library/card/CardContext;",
        ">;"
    }
.end annotation


# static fields
.field private static c:Lcom/twitter/library/card/z;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/twitter/library/card/al;-><init>()V

    .line 14
    return-void
.end method

.method public static a()Lcom/twitter/library/card/z;
    .locals 1

    .prologue
    .line 17
    sget-object v0, Lcom/twitter/library/card/z;->c:Lcom/twitter/library/card/z;

    if-nez v0, :cond_0

    .line 18
    new-instance v0, Lcom/twitter/library/card/z;

    invoke-direct {v0}, Lcom/twitter/library/card/z;-><init>()V

    sput-object v0, Lcom/twitter/library/card/z;->c:Lcom/twitter/library/card/z;

    .line 20
    :cond_0
    sget-object v0, Lcom/twitter/library/card/z;->c:Lcom/twitter/library/card/z;

    return-object v0
.end method


# virtual methods
.method protected a(Lcom/twitter/library/card/aa;JLcom/twitter/library/card/CardContext;)V
    .locals 0

    .prologue
    .line 29
    invoke-interface {p1, p2, p3, p4}, Lcom/twitter/library/card/aa;->a(JLcom/twitter/library/card/CardContext;)V

    .line 30
    return-void
.end method

.method protected bridge synthetic a(Ljava/lang/Object;JLjava/lang/Object;)V
    .locals 0

    .prologue
    .line 9
    check-cast p1, Lcom/twitter/library/card/aa;

    check-cast p4, Lcom/twitter/library/card/CardContext;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/twitter/library/card/z;->a(Lcom/twitter/library/card/aa;JLcom/twitter/library/card/CardContext;)V

    return-void
.end method
