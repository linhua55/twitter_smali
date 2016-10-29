.class Lcas;
.super Lcbm;
.source "Twttr"

# interfaces
.implements Lcat;


# instance fields
.field private a:Z

.field private b:Z

.field private c:Z


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 92
    invoke-direct {p0}, Lcbm;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcar;)V
    .locals 0

    .prologue
    .line 92
    invoke-direct {p0}, Lcas;-><init>()V

    return-void
.end method


# virtual methods
.method public b()Z
    .locals 1

    .prologue
    .line 116
    iget-boolean v0, p0, Lcas;->a:Z

    return v0
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 121
    iget-boolean v0, p0, Lcas;->b:Z

    return v0
.end method

.method public d()Z
    .locals 1

    .prologue
    .line 126
    iget-boolean v0, p0, Lcas;->c:Z

    return v0
.end method

.method protected f()V
    .locals 2

    .prologue
    .line 99
    const-string/jumbo v0, "conversations_android_extended_payload_enabled"

    .line 100
    invoke-static {v0}, Lcom/twitter/config/d;->a(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcas;->a:Z

    .line 101
    const-string/jumbo v0, "conversations_android_ignore_extended_payload_display_start"

    .line 102
    invoke-static {v0}, Lcom/twitter/config/d;->a(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/twitter/model/json/core/JsonTwitterStatus;->a:Z

    .line 104
    const-string/jumbo v0, "conversations_autopopulate_reply_android_4275"

    .line 105
    invoke-static {v0}, Lcom/twitter/config/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 106
    const-string/jumbo v1, "treatment"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcas;->c:Z

    .line 108
    const-string/jumbo v0, "conversations_discount_attachments_android_4921"

    .line 109
    invoke-static {v0}, Lcom/twitter/config/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 110
    const-string/jumbo v1, "discount_attachments"

    .line 111
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcas;->b:Z

    .line 112
    return-void
.end method
