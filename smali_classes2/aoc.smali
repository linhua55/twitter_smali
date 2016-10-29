.class Laoc;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/twitter/android/notificationtimeline/l;

.field final synthetic b:Laob;


# direct methods
.method constructor <init>(Laob;Lcom/twitter/android/notificationtimeline/l;)V
    .locals 0

    .prologue
    .line 48
    iput-object p1, p0, Laoc;->b:Laob;

    iput-object p2, p0, Laoc;->a:Lcom/twitter/android/notificationtimeline/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 51
    const v0, 0x7f13000b

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    .line 52
    instance-of v1, v0, Lckz;

    if-eqz v1, :cond_0

    .line 53
    invoke-static {v0}, Lcom/twitter/util/object/ObjectUtils;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lckz;

    .line 54
    iget-object v1, p0, Laoc;->a:Lcom/twitter/android/notificationtimeline/l;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v0, v0, Lckz;->b:Lcks;

    check-cast v0, Lckx;

    iget-object v0, v0, Lckx;->g:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lcom/twitter/android/notificationtimeline/l;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 59
    :goto_0
    return-void

    .line 56
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Generic activity view was clicked on but did not have a GenericActivityItem tag set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lbix;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
