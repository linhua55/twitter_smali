.class Lcom/twitter/app/main/n;
.super Landroid/database/DataSetObserver;
.source "Twttr"


# instance fields
.field final synthetic a:Lcom/twitter/app/main/MainActivity;

.field final synthetic b:Lcom/twitter/app/main/m;


# direct methods
.method constructor <init>(Lcom/twitter/app/main/m;Lcom/twitter/app/main/MainActivity;)V
    .locals 0

    .prologue
    .line 1930
    iput-object p1, p0, Lcom/twitter/app/main/n;->b:Lcom/twitter/app/main/m;

    iput-object p2, p0, Lcom/twitter/app/main/n;->a:Lcom/twitter/app/main/MainActivity;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 2

    .prologue
    .line 1933
    iget-object v0, p0, Lcom/twitter/app/main/n;->b:Lcom/twitter/app/main/m;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/twitter/app/main/m;->a(Lcom/twitter/app/main/m;I)I

    .line 1935
    return-void
.end method

.method public onInvalidated()V
    .locals 2

    .prologue
    .line 1939
    iget-object v0, p0, Lcom/twitter/app/main/n;->b:Lcom/twitter/app/main/m;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/twitter/app/main/m;->b(Lcom/twitter/app/main/m;I)I

    .line 1940
    return-void
.end method
