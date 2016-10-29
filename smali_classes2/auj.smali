.class Lauj;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lcom/twitter/app/common/util/w;


# instance fields
.field final synthetic a:Laui;


# direct methods
.method constructor <init>(Laui;)V
    .locals 0

    .prologue
    .line 45
    iput-object p1, p0, Lauj;->a:Laui;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/app/Activity;ILandroid/content/Intent;)V
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lauj;->a:Laui;

    invoke-static {v0, p2, p3}, Laui;->a(Laui;ILandroid/content/Intent;)V

    .line 49
    return-void
.end method
