.class public Lcom/twitter/model/json/people/JsonModuleTitle;
.super Lcom/twitter/model/json/common/e;
.source "Twttr"


# annotations
.annotation build Lcom/bluelinelabs/logansquare/annotation/JsonObject;
    fieldNamingPolicy = .enum Lcom/bluelinelabs/logansquare/annotation/JsonObject$FieldNamingPolicy;->LOWER_CASE_WITH_UNDERSCORES:Lcom/bluelinelabs/logansquare/annotation/JsonObject$FieldNamingPolicy;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/twitter/model/json/common/e",
        "<",
        "Lcom/twitter/model/people/ModuleTitle;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Ljava/lang/String;
    .annotation build Lcom/bluelinelabs/logansquare/annotation/JsonField;
    .end annotation
.end field

.field public b:Lcom/twitter/model/people/ModuleTitle$Icon;
    .annotation build Lcom/bluelinelabs/logansquare/annotation/JsonField;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/twitter/model/json/common/e;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/twitter/model/people/ae;
    .locals 2

    .prologue
    .line 23
    new-instance v0, Lcom/twitter/model/people/ae;

    invoke-direct {v0}, Lcom/twitter/model/people/ae;-><init>()V

    iget-object v1, p0, Lcom/twitter/model/json/people/JsonModuleTitle;->a:Ljava/lang/String;

    .line 24
    invoke-virtual {v0, v1}, Lcom/twitter/model/people/ae;->a(Ljava/lang/String;)Lcom/twitter/model/people/ae;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/model/json/people/JsonModuleTitle;->b:Lcom/twitter/model/people/ModuleTitle$Icon;

    .line 25
    invoke-virtual {v0, v1}, Lcom/twitter/model/people/ae;->a(Lcom/twitter/model/people/ModuleTitle$Icon;)Lcom/twitter/model/people/ae;

    move-result-object v0

    .line 23
    return-object v0
.end method

.method public synthetic c()Lcom/twitter/util/object/h;
    .locals 1

    .prologue
    .line 11
    invoke-virtual {p0}, Lcom/twitter/model/json/people/JsonModuleTitle;->a()Lcom/twitter/model/people/ae;

    move-result-object v0

    return-object v0
.end method
