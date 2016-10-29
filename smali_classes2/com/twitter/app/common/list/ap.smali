.class public Lcom/twitter/app/common/list/ap;
.super Lcom/twitter/app/common/inject/f;
.source "Twttr"


# instance fields
.field private final c:Lcom/twitter/app/common/list/aj;


# direct methods
.method constructor <init>(Lcom/twitter/app/common/base/BaseFragmentActivity;Lcom/twitter/app/common/list/aj;)V
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lcom/twitter/app/common/inject/t;->a:Lcom/twitter/app/common/inject/t;

    invoke-direct {p0, p1, v0}, Lcom/twitter/app/common/inject/f;-><init>(Landroid/app/Activity;Lcom/twitter/app/common/inject/t;)V

    .line 24
    iput-object p2, p0, Lcom/twitter/app/common/list/ap;->c:Lcom/twitter/app/common/list/aj;

    .line 25
    return-void
.end method


# virtual methods
.method public a()Lcom/twitter/app/common/list/aj;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/twitter/app/common/list/ap;->c:Lcom/twitter/app/common/list/aj;

    return-object v0
.end method
