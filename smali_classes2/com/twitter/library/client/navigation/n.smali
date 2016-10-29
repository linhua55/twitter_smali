.class Lcom/twitter/library/client/navigation/n;
.super Landroid/support/v4/widget/DrawerLayout$SimpleDrawerListener;
.source "Twttr"


# instance fields
.field final synthetic a:Lcom/twitter/library/client/navigation/l;


# direct methods
.method private constructor <init>(Lcom/twitter/library/client/navigation/l;)V
    .locals 0

    .prologue
    .line 445
    iput-object p1, p0, Lcom/twitter/library/client/navigation/n;->a:Lcom/twitter/library/client/navigation/l;

    invoke-direct {p0}, Landroid/support/v4/widget/DrawerLayout$SimpleDrawerListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/twitter/library/client/navigation/l;Lcom/twitter/library/client/navigation/m;)V
    .locals 0

    .prologue
    .line 445
    invoke-direct {p0, p1}, Lcom/twitter/library/client/navigation/n;-><init>(Lcom/twitter/library/client/navigation/l;)V

    return-void
.end method


# virtual methods
.method public onDrawerClosed(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 448
    iget-object v0, p0, Lcom/twitter/library/client/navigation/n;->a:Lcom/twitter/library/client/navigation/l;

    invoke-static {v0}, Lcom/twitter/library/client/navigation/l;->b(Lcom/twitter/library/client/navigation/l;)Lcom/twitter/library/client/navigation/ModernDrawerView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/library/client/navigation/ModernDrawerView;->b()V

    .line 449
    return-void
.end method
