.class Lcom/twitter/android/notificationtimeline/g;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/twitter/android/notificationtimeline/FilterBarViewDelegate$Filter;

.field final synthetic b:Landroid/view/View$OnClickListener;

.field final synthetic c:Lcom/twitter/android/notificationtimeline/FilterBarViewDelegate;


# direct methods
.method constructor <init>(Lcom/twitter/android/notificationtimeline/FilterBarViewDelegate;Lcom/twitter/android/notificationtimeline/FilterBarViewDelegate$Filter;Landroid/view/View$OnClickListener;)V
    .locals 0

    .prologue
    .line 122
    iput-object p1, p0, Lcom/twitter/android/notificationtimeline/g;->c:Lcom/twitter/android/notificationtimeline/FilterBarViewDelegate;

    iput-object p2, p0, Lcom/twitter/android/notificationtimeline/g;->a:Lcom/twitter/android/notificationtimeline/FilterBarViewDelegate$Filter;

    iput-object p3, p0, Lcom/twitter/android/notificationtimeline/g;->b:Landroid/view/View$OnClickListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 125
    iget-object v0, p0, Lcom/twitter/android/notificationtimeline/g;->c:Lcom/twitter/android/notificationtimeline/FilterBarViewDelegate;

    iget-object v1, p0, Lcom/twitter/android/notificationtimeline/g;->a:Lcom/twitter/android/notificationtimeline/FilterBarViewDelegate$Filter;

    invoke-virtual {v0, v1}, Lcom/twitter/android/notificationtimeline/FilterBarViewDelegate;->a(Lcom/twitter/android/notificationtimeline/FilterBarViewDelegate$Filter;)V

    .line 126
    iget-object v0, p0, Lcom/twitter/android/notificationtimeline/g;->b:Landroid/view/View$OnClickListener;

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 127
    return-void
.end method
