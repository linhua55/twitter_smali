.class public Labf;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lcom/twitter/util/object/e;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/twitter/util/object/e",
        "<",
        "Lcom/twitter/library/card/CardContext;",
        "Lclm;",
        "Lcdq;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/twitter/library/card/CardContext;Lclm;)Lcdq;
    .locals 4

    .prologue
    .line 15
    new-instance v0, Lcdq;

    invoke-virtual {p1}, Lcom/twitter/library/card/CardContext;->d()J

    move-result-wide v2

    invoke-direct {v0, v2, v3, p2}, Lcdq;-><init>(JLclm;)V

    return-object v0
.end method

.method public bridge synthetic a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 10
    check-cast p1, Lcom/twitter/library/card/CardContext;

    check-cast p2, Lclm;

    invoke-virtual {p0, p1, p2}, Labf;->a(Lcom/twitter/library/card/CardContext;Lclm;)Lcdq;

    move-result-object v0

    return-object v0
.end method
