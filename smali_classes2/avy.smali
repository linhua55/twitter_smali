.class public Lavy;
.super Lcom/twitter/app/common/inject/f;
.source "Twttr"


# instance fields
.field private final c:Lcom/twitter/app/drafts/x;


# direct methods
.method public constructor <init>(Lcom/twitter/app/common/base/BaseFragmentActivity;Lcom/twitter/app/drafts/x;Lcom/twitter/app/common/inject/t;)V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0, p1, p3}, Lcom/twitter/app/common/inject/f;-><init>(Landroid/app/Activity;Lcom/twitter/app/common/inject/t;)V

    .line 27
    iput-object p2, p0, Lavy;->c:Lcom/twitter/app/drafts/x;

    .line 28
    return-void
.end method


# virtual methods
.method a()Lcom/twitter/app/drafts/x;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lavy;->c:Lcom/twitter/app/drafts/x;

    return-object v0
.end method
