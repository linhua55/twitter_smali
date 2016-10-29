.class public Lcom/twitter/model/json/activity/JsonNotificationIcon;
.super Lcom/twitter/model/json/common/f;
.source "Twttr"


# annotations
.annotation build Lcom/bluelinelabs/logansquare/annotation/JsonObject;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/twitter/model/json/common/f",
        "<",
        "Lclc;",
        ">;"
    }
.end annotation


# instance fields
.field public a:I
    .annotation build Lcom/bluelinelabs/logansquare/annotation/JsonField;
        typeConverter = Lcom/twitter/model/json/activity/a;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/twitter/model/json/common/f;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lclc;
    .locals 2

    .prologue
    .line 20
    new-instance v0, Lclc;

    iget v1, p0, Lcom/twitter/model/json/activity/JsonNotificationIcon;->a:I

    invoke-direct {v0, v1}, Lclc;-><init>(I)V

    return-object v0
.end method

.method public synthetic b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 11
    invoke-virtual {p0}, Lcom/twitter/model/json/activity/JsonNotificationIcon;->a()Lclc;

    move-result-object v0

    return-object v0
.end method
