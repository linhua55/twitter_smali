.class public Lcom/twitter/model/json/businessprofiles/b;
.super Lcom/twitter/model/json/common/o;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/twitter/model/json/common/o",
        "<",
        "Lcom/twitter/model/businessprofiles/KeyEngagementType;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 10
    invoke-static {}, Lcom/twitter/model/businessprofiles/KeyEngagementType;->values()[Lcom/twitter/model/businessprofiles/KeyEngagementType;

    move-result-object v0

    sget-object v1, Lcom/twitter/model/businessprofiles/KeyEngagementType;->a:Lcom/twitter/model/businessprofiles/KeyEngagementType;

    invoke-direct {p0, v0, v1}, Lcom/twitter/model/json/common/o;-><init>([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 11
    return-void
.end method
