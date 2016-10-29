.class final Lapy;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lczn;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lczn",
        "<",
        "Lcom/twitter/model/json/people/JsonModule;",
        "Lcom/twitter/model/people/g;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 201
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/twitter/model/json/people/JsonModule;)Lcom/twitter/model/people/g;
    .locals 1

    .prologue
    .line 205
    invoke-static {p1}, Lcom/twitter/util/object/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/json/people/JsonModule;

    invoke-static {v0}, Laps;->a(Lcom/twitter/model/json/people/JsonModule;)Lcom/twitter/model/people/g;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 201
    check-cast p1, Lcom/twitter/model/json/people/JsonModule;

    invoke-virtual {p0, p1}, Lapy;->a(Lcom/twitter/model/json/people/JsonModule;)Lcom/twitter/model/people/g;

    move-result-object v0

    return-object v0
.end method
