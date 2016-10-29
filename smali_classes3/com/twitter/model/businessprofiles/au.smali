.class public final Lcom/twitter/model/businessprofiles/au;
.super Lcom/twitter/util/object/h;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/twitter/util/object/h",
        "<",
        "Lcom/twitter/model/businessprofiles/as;",
        ">;"
    }
.end annotation


# instance fields
.field a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field b:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/twitter/util/object/h;-><init>()V

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/twitter/model/businessprofiles/au;->a:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lcom/twitter/model/businessprofiles/au;
    .locals 0

    .prologue
    .line 72
    iput-object p1, p0, Lcom/twitter/model/businessprofiles/au;->b:Ljava/lang/String;

    .line 73
    return-object p0
.end method

.method public a(Ljava/util/List;)Lcom/twitter/model/businessprofiles/au;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/twitter/model/businessprofiles/au;"
        }
    .end annotation

    .prologue
    .line 60
    iput-object p1, p0, Lcom/twitter/model/businessprofiles/au;->a:Ljava/util/List;

    .line 61
    return-object p0
.end method

.method protected synthetic c()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 52
    invoke-virtual {p0}, Lcom/twitter/model/businessprofiles/au;->e()Lcom/twitter/model/businessprofiles/as;

    move-result-object v0

    return-object v0
.end method

.method protected e()Lcom/twitter/model/businessprofiles/as;
    .locals 1

    .prologue
    .line 79
    new-instance v0, Lcom/twitter/model/businessprofiles/as;

    invoke-direct {v0, p0}, Lcom/twitter/model/businessprofiles/as;-><init>(Lcom/twitter/model/businessprofiles/au;)V

    return-object v0
.end method
