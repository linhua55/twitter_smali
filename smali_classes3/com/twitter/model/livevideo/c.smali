.class public final Lcom/twitter/model/livevideo/c;
.super Lcom/twitter/util/object/h;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/twitter/util/object/h",
        "<",
        "Lcom/twitter/model/livevideo/a;",
        ">;"
    }
.end annotation


# instance fields
.field a:J

.field b:Ljava/lang/String;

.field c:Lcom/twitter/model/livevideo/BroadcastState;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/twitter/util/object/h;-><init>()V

    .line 67
    sget-object v0, Lcom/twitter/model/livevideo/BroadcastState;->b:Lcom/twitter/model/livevideo/BroadcastState;

    iput-object v0, p0, Lcom/twitter/model/livevideo/c;->c:Lcom/twitter/model/livevideo/BroadcastState;

    return-void
.end method


# virtual methods
.method public a(J)Lcom/twitter/model/livevideo/c;
    .locals 1

    .prologue
    .line 72
    iput-wide p1, p0, Lcom/twitter/model/livevideo/c;->a:J

    .line 73
    return-object p0
.end method

.method public a(Lcom/twitter/model/livevideo/BroadcastState;)Lcom/twitter/model/livevideo/c;
    .locals 0

    .prologue
    .line 84
    iput-object p1, p0, Lcom/twitter/model/livevideo/c;->c:Lcom/twitter/model/livevideo/BroadcastState;

    .line 85
    return-object p0
.end method

.method public a(Ljava/lang/String;)Lcom/twitter/model/livevideo/c;
    .locals 0

    .prologue
    .line 78
    iput-object p1, p0, Lcom/twitter/model/livevideo/c;->b:Ljava/lang/String;

    .line 79
    return-object p0
.end method

.method protected synthetic c()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 63
    invoke-virtual {p0}, Lcom/twitter/model/livevideo/c;->e()Lcom/twitter/model/livevideo/a;

    move-result-object v0

    return-object v0
.end method

.method protected e()Lcom/twitter/model/livevideo/a;
    .locals 1

    .prologue
    .line 91
    new-instance v0, Lcom/twitter/model/livevideo/a;

    invoke-direct {v0, p0}, Lcom/twitter/model/livevideo/a;-><init>(Lcom/twitter/model/livevideo/c;)V

    return-object v0
.end method
