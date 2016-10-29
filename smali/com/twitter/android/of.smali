.class Lcom/twitter/android/of;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/twitter/android/SearchActivity;


# direct methods
.method constructor <init>(Lcom/twitter/android/SearchActivity;)V
    .locals 0

    .prologue
    .line 1105
    iput-object p1, p0, Lcom/twitter/android/of;->a:Lcom/twitter/android/SearchActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7

    .prologue
    .line 1108
    iget-object v0, p0, Lcom/twitter/android/of;->a:Lcom/twitter/android/SearchActivity;

    invoke-static {v0}, Lcom/twitter/android/SearchActivity;->a(Lcom/twitter/android/SearchActivity;)Lcom/twitter/library/client/Session;

    move-result-object v3

    .line 1109
    iget-object v0, p0, Lcom/twitter/android/of;->a:Lcom/twitter/android/SearchActivity;

    new-instance v1, Lbtz;

    iget-object v2, p0, Lcom/twitter/android/of;->a:Lcom/twitter/android/SearchActivity;

    const-wide v4, 0x9222925fL

    const/4 v6, 0x0

    invoke-direct/range {v1 .. v6}, Lbtz;-><init>(Landroid/content/Context;Lcom/twitter/library/client/Session;JLcss;)V

    const/16 v2, 0x66

    invoke-static {v0, v1, v2}, Lcom/twitter/android/SearchActivity;->a(Lcom/twitter/android/SearchActivity;Lcom/twitter/library/service/x;I)Z

    .line 1112
    return-void
.end method
