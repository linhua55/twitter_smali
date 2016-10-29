.class Lcom/twitter/android/mf;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/twitter/android/ProfileActivity;


# direct methods
.method constructor <init>(Lcom/twitter/android/ProfileActivity;)V
    .locals 0

    .prologue
    .line 1818
    iput-object p1, p0, Lcom/twitter/android/mf;->a:Lcom/twitter/android/ProfileActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 1821
    iget-object v0, p0, Lcom/twitter/android/mf;->a:Lcom/twitter/android/ProfileActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/twitter/android/ProfileActivity;->a(Lcom/twitter/android/ProfileActivity;Z)V

    .line 1822
    return-void
.end method
