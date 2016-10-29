.class Lcom/twitter/model/json/livevideo/a;
.super Lcom/bluelinelabs/logansquare/typeconverters/StringBasedTypeConverter;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/bluelinelabs/logansquare/typeconverters/StringBasedTypeConverter",
        "<",
        "Lcom/twitter/model/livevideo/BroadcastState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/bluelinelabs/logansquare/typeconverters/StringBasedTypeConverter;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lcom/twitter/model/livevideo/BroadcastState;
    .locals 2

    .prologue
    .line 44
    invoke-static {p1}, Lcom/twitter/util/object/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/model/livevideo/BroadcastState;->valueOf(Ljava/lang/String;)Lcom/twitter/model/livevideo/BroadcastState;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/twitter/model/livevideo/BroadcastState;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    invoke-static {p1}, Lcom/twitter/util/object/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/livevideo/BroadcastState;

    invoke-virtual {v0}, Lcom/twitter/model/livevideo/BroadcastState;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public synthetic convertToString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    check-cast p1, Lcom/twitter/model/livevideo/BroadcastState;

    invoke-virtual {p0, p1}, Lcom/twitter/model/json/livevideo/a;->a(Lcom/twitter/model/livevideo/BroadcastState;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public synthetic getFromString(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 40
    invoke-virtual {p0, p1}, Lcom/twitter/model/json/livevideo/a;->a(Ljava/lang/String;)Lcom/twitter/model/livevideo/BroadcastState;

    move-result-object v0

    return-object v0
.end method
