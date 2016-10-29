.class public final Lcom/google/i18n/phonenumbers/repackaged/com/google/protobuf/Descriptors;
.super Ljava/lang/Object;
.source "Twttr"


# static fields
.field private static final a:Ljava/util/logging/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 65
    const-class v0, Lcom/google/i18n/phonenumbers/repackaged/com/google/protobuf/Descriptors;

    .line 66
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/google/i18n/phonenumbers/repackaged/com/google/protobuf/Descriptors;->a:Ljava/util/logging/Logger;

    .line 65
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2197
    return-void
.end method
